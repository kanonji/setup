#!/bin/sh
echo '-------------------'
echo 'Setup directories.'
echo '-------------------'
echo ''

if [ ! -d ~/local ]; then
  echo 'Create ~/local'
  mkdir -p ~/local/bin
  mkdir ~/local/sbin
  mkdir ~/local/src
  mkdir ~/local/installed
  mkdir ~/local/lib #deprecated
fi

if [ ! -d ~/dev ]; then
  echo 'Create ~/dev'
  mkdir -p ~/dev/sandbox
  mkdir ~/dev/rgit
  mkdir ~/dev/cgit
fi

echo ''
echo 'Setup directories...Done.'
echo ''
