export ZSH="/Users/${USER}/.oh-my-zsh"
export ZSH_DISABLE_COMPFIX=true
export ZSH_THEME=""

fpath=(
  /usr/local/share/zsh-completions
  /usr/local/share/zsh/site-functions
  $fpath
)

plugins=()

source "${ZSH}/oh-my-zsh.sh"
