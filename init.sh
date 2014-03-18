#!/bin/bash

# Initialize with necessary commands to get the files in place and update what's
# necessary.

DIR=${PWD}

## Create Symlinks
echo "Synlinking bashrc [./bashrc > $HOME/.bashrc]"
ln -s $DIR/bashrc $HOME/.bashrc

echo "Synlinking bash_aliases [./bash_aliases > $HOME/.bash_aliases]"
ln -s $DIR/bash_aliases $HOME/.bash_aliases

echo "Synlinking gitconfig [./gitconfig > $HOME/.gitconfig]"
ln -s $DIR/gitconfig $HOME/.gitconfig

echo "Synlinking vim folder [./vim > $HOME/.vim]"
ln -s $DIR/vim $HOME/.vim

echo "Synlinking vimrc [./vimrc > $HOME/.vimrc]"
ln -s $DIR/vimrc $HOME/.vimrc

echo "Synlinking gvimrc [./gvimrc > $HOME/.gvimrc]"
ln -s $DIR/gvimrc $HOME/.gvimrc

# Fetch the Vundle repo and subsequently install all bundles.
echo "Fetching Vundle repository..."
git clone https://github.com/gmarik/vundle $DIR/vim/bundle/vundle
echo
echo "Installing Vim plugins, please wait..." 
vim -Nu $DIR/vim/main.vundle +BundleInstall +qa
