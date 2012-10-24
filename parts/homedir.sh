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
  echo "#Added by $_" >> ~/.bash_profile
  echo 'export PATH=~/local/bin:~/local/sbin:$PATH' >> ~/.bash_profile
fi

echo '-------------------------'
echo 'Setup directories...Done.'
echo '-------------------------'
echo ''
