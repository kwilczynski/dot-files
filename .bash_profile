case $- in
    *i*) ;;
    *) return ;;
esac

export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

if [[ -d "${HOME}/bin" ]]; then
    export PATH="${HOME}/bin:${PATH}"
fi

if [[ -d "${HOME}/.local/bin" ]]; then
    export PATH="${HOME}/.local/bin:${PATH}"
fi

if [[ -d "${HOME}/.linuxbrew" ]]; then
    eval "$("${HOME}/.linuxbrew/bin/brew" shellenv)"
fi

if [[ -d /home/linuxbrew/.linuxbrew ]]; then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if command -v brew >/dev/null; then
    export BREW_PREFIX="$(dirname $(dirname $(type -p brew)))"
fi

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
