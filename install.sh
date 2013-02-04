#!/bin/bash

ln -s ~/.vim/vimrc ~/.vimrc 
ln -s ~/.vim/gitignore ~/.gitignore 
sudo apt-get install -y pyflakes exuberant-ctags
git config --global user.name "Alex Yang"
git config --global user.email "alex890714@gmail.com"
