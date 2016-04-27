#!/bin/zsh

function tswap() {
  if [ $# = 0 ]; then
    tmux swap-window -s1 -t2
  else
    if [ $# -ne 2 ]; then
      echo "Illegal number of arguments!"
    else
      tmux swap-window -s$1 -t$2
    fi
  fi
}

alias mux='tmuxinator'
