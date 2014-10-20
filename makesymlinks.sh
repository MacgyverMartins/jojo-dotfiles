#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vim vimrc zshrc phoenix.js gvimrc jshintrc aliases editorconfig"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo "cloning vundle & colorthemes"
#Install Vundle for vim plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#Install my custom colorscheme
git clone https://github.com/jojoyuji/gruvbox ~/.vim/bundle/gruvbox

git clone https://github.com/marijnh/tern_for_vim ~/.vim/bundle/tern_for_vim
cd ~/.vim/bundle/tern_for_vim && npm install

echo "Installing jshint"
npm install -g jshint jscs


