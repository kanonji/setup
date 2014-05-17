#!/bin/sh
echo '-------------------'
echo 'Install vim plugins.'
echo '-------------------'
echo ''

mkdir -p ~/.vim/tmp
mkdir ~/.vim/indent
mkdir ~/.vim/bundle
mkdir ~/.vim/autoload
git clone git://github.com/tpope/vim-pathogen.git ~/.vim/bundle/vim-pathogen
ln -s ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/

cd ~/.vim/bundle
git clone https://github.com/thinca/vim-quickrun.git
git clone https://github.com/Shougo/neocomplcache.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/hail2u/vim-css3-syntax.git
git clone https://github.com/violetyk/cake.vim.git
git clone https://github.com/tomtom/tcomment_vim.git
git clone https://github.com/cocopon/snapbuffer.vim.git
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/othree/html5.vim.git
git clone https://github.com/pangloss/vim-javascript.git
git clone https://github.com/tpope/vim-surround.git

echo '---------------------------'
echo 'Install vim plugins...Done.'
echo '---------------------------'
echo ''
