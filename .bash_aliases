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

alias diff='colordiff'
alias diffu='colordiff -uNr'

alias bc='bc -l'

alias tree='tree -C'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias br='brew'

alias b='bundle'
alias be='bundle exec'

alias v='vagrant'
alias k='kubectl'

if command -v podman >/dev/null; then
    alias docker='podman'
fi

if command -v aws-v3.rb >/dev/null; then
    alias aws.rb='aws-v3.rb'
fi
