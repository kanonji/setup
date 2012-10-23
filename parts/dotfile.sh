#!/bin/sh
echo 'Install dotfiles.'

cd ~
git clone https://github.com/kanonji/dotfile.git
for f in \
    .gitconfig .gitignore .screenrc .vimrc; do
    ln -s ~/dotfile/$f ~
done

if [[ -f ~/.bashrc ]]; then
    echo '' >> ~/.bashrc
    echo "#Added by $_" >> ~/.bashrc
    echo 'if [[ -f "$HOME/dotfile/.bashrc" ]]; then' >> ~/.bashrc
    echo '    source $HOME/dotfile/.bashrc' >> ~/.bashrc
    echo 'fi' >> ~/.bashrc
else
    ln -s ~/dotfile/.bashrc ~
fi


echo '' >> ~/.bash_profile
echo "#Added by $_" >> ~/.bash_profile
echo 'if [[ -f "$HOME/.bashrc" ]]; then' >> ~/.bash_profile
echo '    source $HOME/.bashrc' >> ~/.bash_profile
echo 'fi' >> ~/.bash_profile

echo 'Install dotfiles...Done.'
