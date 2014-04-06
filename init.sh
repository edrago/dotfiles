#!/bin/bash

# Initialize with necessary commands to get the files in place and update what's
# necessary.

DIR=$( cd "$( dirname "$0" )" && pwd )
SYMLINKS="bashrc bash_aliases bash_profile gitconfig vim vimrc gvimrc tmux.conf"

## Create backup of files if exist and symlink the .file
for s in $SYMLINKS
do
  if [ -f "$HOME/.$s" ] || [ -d "$HOME/.$s" ]; then
    mv $HOME/.$s $HOME/.$s.bkp
  fi

  echo "Symlinking $s [./$s > $HOME/.$s]"
  ln -s $DIR/$s $HOME/.$s
done

# Fetch the Vundle repo and subsequently install all bundles.
echo "Fetching Vundle repository..."
git clone https://github.com/gmarik/vundle $DIR/vim/bundle/vundle
echo
echo "Installing Vim plugins in background, please wait..." 
vim -Nu $DIR/vim/main.vundle +PluginInstall +qa
