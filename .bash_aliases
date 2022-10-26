if ls --color &>/dev/null; then
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

alias hh='hstr'
alias h='history'

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias g='git'

alias df='df -H'
alias du='du -ch'

alias wget='wget -c'

alias jj='jobs -l'

# Disabled in favour of git-delta.
# alias diff='colordiff'
# alias diffu='colordiff -uNr'

alias bc='bc -l'

alias tree='tree -C'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
