#!/bin/bash

DOT_FILES=( .vimrc .gvimrc .bashrc .zshrc .zshrc.alias .gitconfig)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

ln -s ~/dotfiles/vimfiles ~/.vim
git submodule add http://github.com/gmarik/vundle.git ~/dotfiles/vimfiles/vundle.git

