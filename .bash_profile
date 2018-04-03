[[ $- != *i* ]] && return

if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [[ -e ${HOME}/.iterm2_shell_integration.bash ]]; then
    . ${HOME}/.iterm2_shell_integration.bash
fi

if which rbenv >/dev/null; then
    eval "$(rbenv init -)"
fi

if which direnv >/dev/null; then
    eval "$(direnv hook bash)"
fi

if which aws >/dev/null; then
    complete -C aws_completer aws
fi

if which fzf >/dev/null; then
    . $(brew --prefix)/opt/fzf/shell/completion.bash
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true

if [[ $EUID == 0 ]] || [[ $USER == "root" ]] ; then
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

export HISTSIZE=131072
export HISTFILESIZE=262144
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE='&:[ ]*:exit:ls:bg:fg:history:clear'

export HH_CONFIG=hicolor,regexp,rawhistory
export HH_PROMPT='> '

export LANG='en_US.UTF8'
export LANGUAGE='en_US.UTF-8'
export LC_COLLATE='en_US.UTF-8'
export LC_CTYPE='en_US.UTF-8'
export LC_MESSAGES='en_US.UTF-8'
export LC_MONETARY='en_US.UTF-8'
export LC_NUMERIC='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

export RUBYOPT='-rubygems'

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1

export CHECKPOINT_DISABLE=1
export VAGRANT_CHECKPOINT_DISABLE=1

export DIRENV_LOG_FORMAT=

if ls --color &> /dev/null ; then
    alias l='ls --color -CF'
    alias ls='ls --color -G'
    alias ll='ls --color -alF'
    alias la='ls --color -Ah'
else
    alias l='ls -G -CF'
    alias ls='ls -G'
    alias ll='ls -G -alF'
    alias la='ls -G -Ah'
fi

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias g='git'
alias df='df -H'
alias du='du -ch'
alias wget='wget -c'
alias h='history'
alias j='jobs -l'
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
alias t='triton'
alias v='vagrant'

# Allow "g" alias to work for Git.
complete -o default -o nospace -F _git g

# Allow "t" alias to work with triton.
complete -o default -o nospace -F _triton_completion t

# Allow "v" alias to work for Vagrant.
complete -o default -o nospace -F _vagrant v

# Temporarily disabled.
#if nvim --version &>/dev/null; then
#    alias vim='nvim'
#fi

# Temporarily disabled.
#export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/opt/gpg-agent/bin:${PATH}"

export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# Temporarily disabled.
#if which tfenv > /dev/null; then
#    export PATH="${HOME}/.tfenv/bin:${PATH}"
#fi
#
#if which pkenv > /dev/null; then
#    export PATH="${HOME}/.pkenv/bin:${PATH}"
#fi

# Only use when bottles are not working as expected.
#if brew --help &> /dev/null ; then
#    export HOMEBREW_BUILD_FROM_SOURCE=1
#fi

# Temporarily disabled.
#if [[ -f ${HOME}/.gpg-agent-info ]]; then
#    . ${HOME}/.gpg-agent-info
#fi

# Temporarily disabled.
#if [[ -S "${GPG_AGENT_INFO%%:*}" && -n "$(pgrep gpg-agent)" ]]; then
#    export GPG_AGENT_INFO
#    export GPG_TTY=$(tty)
#else
#    eval $(gpg-agent --daemon --write-env-file ${HOME}/.gpg-agent-info)
#fi

# Temporarily disabled.
#function vic {
#    echo -e "\033]50;SetProfile=Solarized Dark\a"
#    vim +"colorscheme solarized" $@
#    echo -e "\033]50;SetProfile=Default\a"
#}
