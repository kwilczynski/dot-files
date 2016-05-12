if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion.d/vagrant ]; then
    . $(brew --prefix)/etc/bash_completion.d/vagrant
fi

if which rbenv > /dev/null ; then
    eval "$(rbenv init -)"
fi

if which direnv > /dev/null ; then
    eval "$(direnv hook bash)"
fi

if which aws > /dev/null ; then
    complete -C aws_completer aws
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

export EDITOR='vim'

export PAGER='less'
export MANPAGER='less -X'

export LESS='-R -M --shift 5 -i -x -4 -S -F -X'

export HISTSIZE=32769
export HISTCONTROL=ignoredups:erasedups

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
alias bc='bc -l'
alias tree='tree -C'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias b='bundle '
alias br='brew'
alias be='bundle exec '

export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# Only use when bottles are not working as expected.
#if brew --help &> /dev/null ; then
#    export HOMEBREW_BUILD_FROM_SOURCE=1
#fi

function vic {
    echo -e "\033]50;SetProfile=Solarized Dark\a"
    vim +"colorscheme solarized" $@
    echo -e "\033]50;SetProfile=Default\a"
}
