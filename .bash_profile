[[ $- != *i* ]] && return

export GPG_TTY="$(tty)"

export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

if [[ -f $(brew --prefix)/share/bash-completion/bash_completion ]]; then
    . $(brew --prefix)/share/bash-completion/bash_completion
fi

if [[ -e ${HOME}/.iterm2_shell_integration.bash ]]; then
    . ${HOME}/.iterm2_shell_integration.bash
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
# Only use when bottles are not working as expected.
#export HOMEBREW_BUILD_FROM_SOURCE=1

export CHECKPOINT_DISABLE=1
export VAGRANT_CHECKPOINT_DISABLE=1

export DIRENV_LOG_FORMAT=

if ls --color &>/dev/null ; then
    alias l='ls --color -CF'
    alias ls='ls --color'
    alias ll='ls --color -alF'
    alias la='ls --color -Ah'
    alias lsd="ls --color -ald */"
    alias lsdr="ls --color -altrd */"
else
    alias l='ls -G -CF'
    alias ls='ls -G'
    alias ll='ls -G -alF'
    alias la='ls -G -Ah'
    alias lsd="ls -G -ald */"
    alias lsdr="ls -G -altrd */"
fi
alias hh='hstr'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias g='git'
alias df='df -H'
alias du='du -ch'
alias wget='wget -c'
alias h='history'
alias jj='jobs -l'
alias diff='colordiff'
alias diffu='colordiff -uNr'
alias bc='bc -l'
alias tree='tree -C'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias b='bundle'
alias br='brew'
alias be='bundle exec'
alias v='vagrant'
alias k='kubectl'

# Allow "g" alias to work for Git.
complete -o default -o nospace -F _git g

# Allow "v" alias to work for Vagrant.
complete -o default -o nospace -F _vagrant v

# Allow "k" alias to work for Kubernetes (kubectl).
complete -o default -o nospace -F __start_kubectl k
