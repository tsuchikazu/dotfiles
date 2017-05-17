#!/bin/bash

DOT_FILES=( .vimrc .gvimrc .bashrc .zshrc .zshrc.alias .tmux.conf .gitconfig .ideavimrc )

for file in ${DOT_FILES[@]}
do
    rm $HOME/$file
    ln -s $HOME/dotfiles/$file $HOME/$file
done

echo 'install neobundle for vim setting. see https://github.com/Shougo/neobundle.vim'
