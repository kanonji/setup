#!/bin/sh
echo '-------------------'
echo 'Setting for WSL'
echo '-------------------'
echo ''

ln -s /mnt/c/Users/$USER/dev ~/dev
ln -s /mnt/c/Users/$USER/AppData/Roaming/Unity/Asset\ Store-5.x ~/unityAsset
if [ ! -f /etc/wsl.conf ]; then
  ln -s ~/dotfile/wsl.conf /etc/wsl.conf
fi

sudo echo Asia/Tokyo > /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata
