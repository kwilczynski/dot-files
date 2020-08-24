delta() {
  $(type -P delta) \
    --line-numbers --keep-plus-minus-markers \
    --dark --theme='ansi-dark' --24-bit-color='never' \
    --inspect-raw-lines \
    --tabs=0 "$@"
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
