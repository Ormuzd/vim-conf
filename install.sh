#!/bin/bash

cat /proc/version | grep "Ubuntu"
if [ $? -eq 0 ]; then
echo "Ubuntu"
is_red_hat=0
fi

cat /proc/version | grep "Red Hat"
if [ $? -eq 0 ]; then
echo "Red Hat"
if_red_hat=1
fi

cat /proc/version | grep "Fedora"
if [ $? -eq 0 ]; then
echo "Fedora"
if_red_hat=1
fi

ln -s ~/.vim/vimrc ~/.vimrc 
ln -s ~/.vim/gitignore ~/.gitignore 
ln -s ~/.vim/screenrc ~/.screenrc

if [ $is_red_hat -eq 0 ]; then
sudo apt-get install -y pyflakes exuberant-ctags
pip install flake8
else
sudo yum --enablerepo install -y pyflakes
sudo yum install -y ctags-etags
fi

git config --global core.excludesfile $HOME/.gitignore
git config --global core.editor vim
