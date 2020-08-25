delta() {
  if (( $# == 0 )); then
    set -- \
      --line-numbers --keep-plus-minus-markers \
      --dark --theme='ansi-dark' --24-bit-color='never' \
      --inspect-raw-lines \
      --tabs=0
  fi

  $(type -P delta) "$@"
}

export -f delta

diff() {
  $(type -P diff) "$@" | delta
}

export -f diff

diff-u() {
  $(type -P diff) -uNr "$@" | delta
}

export -f diff-u
