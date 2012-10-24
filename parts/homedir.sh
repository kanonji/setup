#!/bin/sh
echo 'Setup directories.'

if [ ! -d ~/local ]; then
  echo 'Create ~/local'
  mkdir -p ~/local/bin
  mkdir ~/local/sbin
  mkdir ~/local/lib

  echo '' >> ~/.bash_profile
  echo "#Added by $_" >> ~/.bash_profile
  echo 'export PATH=~/local/bin:~/local/sbin:$PATH' >> ~/.bash_profile
fi

echo 'Setup directories...Done.'
