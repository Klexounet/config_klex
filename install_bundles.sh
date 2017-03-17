#!/bin/bash
set -xe

# Install pathogen and vim plugins

cd ~
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/python-mode/python-mode.git
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/nathanaelkane/vim-indent-guides.git
git clone https://github.com/Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py

cp .vim_bundles.vim ~/.vim_bundles.vim
