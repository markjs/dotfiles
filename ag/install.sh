#!/bin/sh

if test ! $(which ag)
then
  echo " Installing ag for you."
  brew install the_silver_searcher > /tmp/ag-install.log
fi
