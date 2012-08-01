#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dotfiles_dir=~/dotfiles
old_dir=~/dotfiles_old
dotfiles="bash_login bash_profile bashrc gitconfig zlogin zshrc"

##########

# create dotfiles_old in homedir
echo "Creating $old_dir for backup of any existing dotfiles in ~"
mkdir -p $old_dir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dotfiles_dir directory"
cd $dotfiles_dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $dotfiles; do
  echo "Moving any existing dotfiles from ~ to $old_dir"
  mv ~/.$file ~/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dotfiles_dir/$file ~/.$file
done