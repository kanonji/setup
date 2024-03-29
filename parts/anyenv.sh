#!/bin/sh
echo '-------------------'
echo 'Install anyenv.'
echo '-------------------'
echo ''

git clone https://github.com/anyenv/anyenv ~/.anyenv
echo 'source ~/dotfile/.bashrc'
source ~/dotfile/.bashrc
anyenv install --init

git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
echo 'source ~/dotfile/.bashrc'
source ~/dotfile/.bashrc

anyenv install phpenv
git clone https://github.com/ngyuki/phpenv-composer.git $(anyenv root)/envs/phpenv/nplugins/phpenv-composer
anyenv install nodenv
git clone https://github.com/pine/nodenv-yarn-install.git $(anyenv root)/envs/nodenv/plugins/nodenv-yarn-install
anyenv install rbenv
anyenv install pyenv
anyenv install goenv
anyenv install tfenv

echo 'source ~/dotfile/.bashrc'
source ~/dotfile/.bashrc

echo ''
echo 'Install anyenv...Done.'
echo ''
