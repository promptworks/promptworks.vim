#!/bin/bash

set -e

# Backup .vim directory
[[ -d ~/.vim && (! -L ~/.vim) ]] && mv ~/.vim ~/.vim.bak

# Clone PromptWorks vim config to be the .vim directory
git clone https://github.com/promptworks/promptworks.vim.git ~/.vim

#Backup .vimrc
[[ -f ~/.vimrc && (! -L ~/.vimrc) ]] && mv ~/.vimrc ~/.vimrc.bak

# Link our vimrc to ~/.vimrc
ln -sF ~/.vim/vimrc ~/.vimrc

# Install vundle plugin
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Install all other plugins using Vundle
vim -u $HOME/.vim/vimrc.bundles +PluginUpdate +qall
