#!/bin/sh
echo '------------------'
echo 'Install dotfiles.'
echo '------------------'
echo ''

git clone git@github.com:kanonji/dotfile.git ~/dotfile
if [ $? -ne 0 ]; then
    echo ''
    echo 'Faild to git clone git@github.com:kanonji/dotfile.git'
    echo ''
    echo 'git clone https://github.com/kanonji/dotfile.git ? y/N'
    read INPUT
    if [ "$INPUT" != "y" ]; then
        echo 'Stoped.'
        exit 1
    fi
    git clone https://github.com/kanonji/dotfile.git ~/dotfile || { echo 'Faild to git clone https://github.com/kanonji/dotfile.git'; exit 1; }
fi

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
