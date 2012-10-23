#!/bin/sh
echo 'Setup directories.'

if [ ! -d ~/local ]; then
  echo 'Create ~/local'
  mkdir -p ~/local/bin
  mkdir ~/local/sbin
  mkdir ~/local/lib

  echo '' >> ~/.bashrc
  echo "#Added by $_" >> ~/.bashrc
  echo 'export PATH=~/local/bin:~/local/sbin:$PATH' >> ~/.bashrc
fi

echo 'Setup directories...Done.'
