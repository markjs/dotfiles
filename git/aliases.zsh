if command -v hub &>/dev/null; then
  function git(){hub "$@"}
fi

alias g=git
alias gst='g status sb'
alias gp='g push'
alias gpl='g pull'
alias gfp='g fetch --all --prune'
alias gpr='g pull-request'
alias gmg='g merge'
alias gd='g diff'
alias gdc='gd --cached'
alias ga='g add'
alias ga.='ga .'
alias gc='g commit -v'
alias gcm='gc -m'
alias gcmw='gcm "Whitespace"'
alias gco='g checkout'
alias gb='g branch'
alias gl='g l'
alias gl5='gl -5'
alias glo='g log --oneline'

