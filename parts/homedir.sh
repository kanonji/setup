#!/bin/sh
echo '-------------------'
echo 'Setup directories.'
echo '-------------------'
echo ''

if [ ! -d ~/local ]; then
  echo 'Create ~/local'
  mkdir -p ~/local/bin
  mkdir ~/local/sbin
  mkdir ~/local/lib

  echo '' >> ~/.bash_profile
  echo "#Added by $0" >> ~/.bash_profile
  echo 'export PATH=~/local/bin:~/local/sbin:$PATH' >> ~/.bash_profile
fi

if [ ! -d ~/local ]; then
  echo 'Create ~/dev'
  mkdir -p ~/dev/sandbox
  mkdir ~/dev/git
fi

echo '-------------------------'
echo 'Setup directories...Done.'
echo '-------------------------'
echo ''
