#!/bin/sh
echo '-------------------'
echo 'Install vim plugins.'
echo '-------------------'
echo ''

mkdir -p ~/.vim/tmp
mkdir ~/.vim/bundle
mkdir ~/.vim/autoload
git clone git://github.com/tpope/vim-pathogen.git ~/.vim/bundle/vim-pathogen
ln -s ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/
ln -s ~/dotfile/.vim/indent ~/.vim/indent

git clone https://github.com/thinca/vim-quickrun.git ~/.vim/bundle/vim-quickrun
git clone https://github.com/Shougo/neocomplcache.git ~/.vim/bundle/neocomplcache
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/hail2u/vim-css3-syntax.git ~/.vim/bundle/vim-css3-syntax
git clone https://github.com/violetyk/cake.vim.git ~/.vim/bundle/cake.vim
git clone https://github.com/tomtom/tcomment_vim.git ~/.vim/bundle/tcomment_vim
git clone https://github.com/cocopon/snapbuffer.vim.git ~/.vim/bundle/snapbuffer.vim
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
git clone https://github.com/othree/html5.vim.git ~/.vim/bundle/html5.vim
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/bundle/editorconfig-vim
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

curl -o ~/.vim/bundle/Align.vba.gz -L http://www.vim.org/scripts/download_script.php?src_id=10110
mkdir ~/.vim/bundle/Align
vim -c 'UseVimball ~/.vim/bundle/Align' -c 'quit' ~/.vim/bundle/Align.vba.gz

echo ''
echo 'Install vim plugins...Done.'
echo ''
