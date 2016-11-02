#!/bin/sh

if ! brew ls --versions zsh-syntax-highlighting > /dev/null; then
  echo "  Installing zsh-syntax-highlighting..."
  brew install zsh-syntax-highlighting
fi
