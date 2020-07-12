diff() {
  $(type -P diff) "$@" | delta --dark --24-bit-color='never' --theme='ansi-dark'
}

export -f diff

diff-u() {
  $(type -P diff) -uNr "$@" | delta --dark --24-bit-color='never' --theme='ansi-dark'
}

export -f diff-u
