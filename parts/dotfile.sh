#!/bin/sh
echo '------------------'
echo 'Install dotfiles.'
echo '------------------'
echo ''

git clone git@github.com:kanonji/dotfile.git ~/dotfile
for f in \
    .gitconfig .gitignore .inputrc .screenrc .slate.js .vimrc Brewfile; do
    ln -s ~/dotfile/$f ~
done

if [[ -f ~/.bashrc ]]; then
    echo '' >> ~/.bashrc
    echo "#Added by $0" >> ~/.bashrc
    echo 'if [[ -f "$HOME/dotfile/.bashrc" ]]; then' >> ~/.bashrc
    echo '    source $HOME/dotfile/.bashrc' >> ~/.bashrc
    echo 'fi' >> ~/.bashrc
else
    ln -s ~/dotfile/.bashrc ~
fi


echo '' >> ~/.bash_profile
echo "#Added by $0" >> ~/.bash_profile
echo 'if [[ -f "$HOME/.bashrc" ]]; then' >> ~/.bash_profile
echo '    source $HOME/.bashrc' >> ~/.bash_profile
echo 'fi' >> ~/.bash_profile

echo '-------------------------'
echo 'Install dotfiles...Done.'
echo '-------------------------'
echo ''
