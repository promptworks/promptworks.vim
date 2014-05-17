#!/bin/sh

set -e

mkdir -p ~/.vim/{bundle,backup}

if [[ -n "$RW" ]]; then
  PREFIX="git@github.com:"
else
  PREFIX="https://github.com/"
fi

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

if ! [[ -d ~/.vim/bundle/promptworks.vim ]]; then
  git clone ${PREFIX}promptworks/promptworks.vim.git ~/.vim/bundle/promptworks.vim
fi

[[ -f ~/.vimrc && (! -L ~/.vimrc) ]] && mv ~/.vimrc ~/.vimrc.bak
ln -sF ~/.vim/bundle/promptworks.vim/vimrc ~/.vimrc

[[ -f ~/.vimrc && (! -L ~/.vimrc) ]] && mv ~/.vimrc.bundles ~/.vimrc.bundles.bak
ln -sF ~/.vim/bundle/promptworks.vim/vimrc.bundles ~/.vimrc.bundles

vim -u $HOME/.vimrc.bundles +PluginInstall +qall
