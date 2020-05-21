[[ $- != *i* ]] && return

export GPG_TTY="$(tty)"

export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

if [[ -d "${HOME}/.linuxbrew" ]]; then
    eval "$("${HOME}/.linuxbrew/bin/brew" shellenv)"
fi

if [[ -d /home/linuxbrew/.linuxbrew ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if command -v brew >/dev/null; then
    export BREW_PREFIX="$(dirname $(dirname $(type -p brew)))"
fi

if [[ -d "${BREW_PREFIX}/opt/curl-openssl" ]]; then
    export PATH="${BREW_PREFIX}/opt/curl-openssl/bin:${PATH}"
else
    export PATH="${BREW_PREFIX}/opt/curl/bin:${PATH}"
fi

for d in 'grep' 'sed' 'gnu-sed' 'findutils'; do
    if [[ -d "${BREW_PREFIX}/opt/${d}" ]]; then
        export PATH="${BREW_PREFIX}/opt/${d}/libexec/gnubin:${PATH}"
    fi
done

if [[ -r "${BREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    export BASH_COMPLETION_COMPAT_DIR="${BREW_PREFIX}/etc/bash_completion.d"
    . "${BREW_PREFIX}/etc/profile.d/bash_completion.sh"
fi

if [[ -f "${BREW_PREFIX}/share/bash-completion/bash_completion" ]]; then
    . "${BREW_PREFIX}/share/bash-completion/bash_completion"
fi

# Disabled in favour of using gbt.
#export GIT_PS1_SHOWDIRTYSTATE=true
#export GIT_PS1_SHOWUNTRACKEDFILES=true
#export GIT_PS1_SHOWSTASHSTATE=true
#
#if [[ $EUID == 0 || $USER == 'root' ]] ; then
#    PS1="\[\033[01;31m\]\h\[\033[01;34m\] \W\[\033[1;33m\]\$(__git_ps1 ' (%s)')\[\033[00m\]#\[\033[00m\] "
#else
#    PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[1;33m\]\$(__git_ps1 ' (%s)')\[\033[00m\]\$\[\033[00m\] "
#fi

if [[ "$(uname)" == 'Linux' ]]; then
    export GBT_CAR_OS_NAME='linux'
else
    export GBT_CAR_OS_NAME='darwin'
fi

export GBT_CAR_DIR_DEPTH='2'

PS1='$(gbt $?)'

export CLICOLOR=1
export LSCOLORS='ExGxFxDxCxDxDxhbhdacEc'

shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s extglob
shopt -s globstar
shopt -s histappend
shopt -s nocaseglob
shopt -s cdable_vars

export EDITOR='vim'

if [[ -x /usr/bin/lesspipe ]]; then
    eval "$(SHELL=/bin/bash lesspipe)"
fi

export PAGER='less'
export MANPAGER='less -X'

export LESS='-R -M --shift 5 -i -x -4 -S -F -X --buffers=65535'
export LESSSECURE=1

export PROMPT_DIRTRIM=2
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"

# No value enables unlimited history.
export HISTSIZE=
export HISTFILESIZE=
export HISTFILE="${HOME}/.bash_eternal_history"
export HISTCONTROL='ignoreboth:ignorespace'
export HISTIGNORE='&:[ ]*:exit:[bf]g:history:clear:pwd'

export HSTR_CONFIG='hicolor,blacklist,keywords-matching,raw-history-view,no-confirm'
export HSTR_PROMPT='> '

export LANG='en_US.UTF8'
export LANGUAGE='en_US.UTF-8'
export LC_COLLATE='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_MESSAGES='en_US.UTF-8'
export LC_MONETARY='en_US.UTF-8'
export LC_NUMERIC='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
# Disabled. Only use when bottles are not working as expected.
#export HOMEBREW_BUILD_FROM_SOURCE=1

if [[ -f "${HOME}/.bash_aliases" ]]; then
    . "${HOME}/.bash_aliases"
fi

if [[ -f "${HOME}/.bash_functions" ]]; then
    . "${HOME}/.bash_functions"
fi

if [[ -d "${HOME}/.bash_profile.d" ]]; then
    for i in "${HOME}"/.bash_profile.d/*; do
        if [[ -r "$i" ]]; then
            . "$i"
        fi
    done
    unset i
fi
