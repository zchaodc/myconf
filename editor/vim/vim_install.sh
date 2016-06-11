#!/bin/bash

VimPath=".vim"
BundlePath="${VimPath}/bundle"

# home dir
cd ~
# check the .vim dir
if [[ ! -d .vim ]]; then
  \mkdir -pv .vim
fi

# install vundle
if [[ ! -d ${BundlePath} ]]; then
    \mkdir -pv ${BundlePath}
fi

# Set up Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy defaulf vimrc
# cp ./tools/myconf/vim
