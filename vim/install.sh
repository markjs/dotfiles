#!/bin/sh

if ! brew ls --versions vim > /dev/null; then
  echo "  Installing vim from homebrew..."
  brew install vim
fi

if ! [ -d ~/.vim ];
then
  git clone git@github.com:markjs/dotvim ~/.vim
  ln -s ~/.vim/vimrc ~/.vimrc
fi
