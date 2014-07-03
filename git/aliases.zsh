if command -v hub &>/dev/null; then
  function git(){hub "$@"}
fi

alias g=git
alias ga.='ga .'
alias ga='g add'
alias gb='g branch'
alias gc='g commit -v'
alias gcm='gc -m'
alias gcmw='gcm "Whitespace"'
alias gco='g checkout'
alias gd='g diff'
alias gdc='gd --cached'
alias gfp='g fetch --all --prune'
alias gl='g l'
alias gl5='gl -5'
alias glo='g log --oneline'
alias gmg='g merge'
alias gp='g push'
alias gpl='g pull'
alias gpr='g pull-request'
alias gr='g rebase'
alias grom='gr origin/master'
alias gst='g status -sb'
