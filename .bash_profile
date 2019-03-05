[[ $- != *i* ]] && return

export GPG_TTY="$(tty)"

export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

if [[ -d "${HOME}/.linuxbrew" ]]; then
    eval "$("${HOME}/.linuxbrew/bin/brew" shellenv)"
fi

if [[ -d /home/linuxbrew/.linuxbrew ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [[ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]]; then
    . "$(brew --prefix)/share/bash-completion/bash_completion"
fi

if [[ -e "${HOME}/.iterm2_shell_integration.bash" ]]; then
    . "${HOME}/.iterm2_shell_integration.bash"
fi

if command -v rbenv >/dev/null; then
    eval "$(rbenv init -)"
fi

if command -v jenv >/dev/null; then
    eval "$(jenv init -)"
fi

if command -v direnv >/dev/null; then
    eval "$(direnv hook bash)"
fi

if command -v jump >/dev/null; then
    eval "$(jump shell)"
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true

if [[ $EUID == 0 || $USER == 'root' ]] ; then
    PS1="\[\033[01;31m\]\h\[\033[01;34m\] \W\[\033[1;33m\]\$(__git_ps1 ' (%s)')\[\033[00m\]#\[\033[00m\] "
else
    PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[1;33m\]\$(__git_ps1 ' (%s)')\[\033[00m\]\$\[\033[00m\] "
fi

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

export RUBYOPT='-rrubygems'

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
# Disabled. Only use when bottles are not working as expected.
# export HOMEBREW_BUILD_FROM_SOURCE=1

export CHECKPOINT_DISABLE=1
export VAGRANT_CHECKPOINT_DISABLE=1

export DIRENV_LOG_FORMAT=

if ls --color &>/dev/null ; then
    alias ls='ls --color=auto'
    alias l='ls -CF'
    alias ll='ls -alF'
    alias la='ls -Ah'
    alias lsd="ls -ald */"
    alias lsdr="ls -altrd */"
else
    alias ls='ls -G'
    alias l='ls -CF'
    alias ll='ls -alF'
    alias la='ls -Ah'
    alias lsd="ls -ald */"
    alias lsdr="ls -altrd */"
fi

if [[ -f "${HOME}/.bash_aliases" ]]; then
    . "${HOME}/.bash_aliases"
fi

# Allow "g" alias to work for Git.
complete -o default -o nospace -F _git g

# Allow "v" alias to work for Vagrant.
complete -o default -o nospace -F _vagrant v

# Allow "k" alias to work for Kubernetes (kubectl).
complete -o default -o nospace -F __start_kubectl k
