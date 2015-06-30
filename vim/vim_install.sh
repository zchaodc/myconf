#!/bin/bash

# home dir
cd ~
# check the .vim dir
if [[ ! -d .vim ]]; then
  mkdir -pv .vim
fi

# install vundle

# copy defaulf vimrc
