diff() {
  $(type -P diff) "$@" | delta
}

export -f diff

diff-u() {
  $(type -P diff) -uNr "$@" | delta
}

export -f diff-u
