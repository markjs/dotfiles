#!/bin/sh

if test ! $(which hub)
then
  echo " Installing hub for you."
  brew install hub > /tmp/hub-install.log
fi
