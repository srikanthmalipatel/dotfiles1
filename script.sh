#! /bin/sh
#
# script.sh
# Copyright (C) 2016 SrikanthMalipatel <SrikanthMalipatel@Srikanth>
#
# Distributed under terms of the MIT license.
#

cd ~
echo In directory: $PWD
echo Cleaning dotfile related symlinks
rm ~/.oh-my-zsh
rm ~/.tmux.conf
rm ~/.vim
rm ~/.vimrc
rm ~/.zsh
rm ~/.zshrc
echo Creating symlinks
ln -s ~/workspace/dotfiles1/oh-my-zsh .oh-my-zsh
ln -s ~/workspace/dotfiles1/.tmux.conf .tmux.conf
ln -s ~/workspace/dotfiles1/.vim .vim
ln -s ~/workspace/dotfiles1/.vimrc .vimrc
ln -s ~/workspace/dotfiles1/vincentbernat/zshrc .zsh
ln -s ~/workspace/dotfiles1/.zshrc .zshrc
cd ~/workspace/dotfiles1/oh-my-zsh/themes/
echo In directory: $PWD
echo Creating symlinks for oh-my-zsh themes
ln -s ~/workspace/dotfiles1/honukai-iterm-zsh/honukai.zsh-theme honukai.zsh-theme

echo "Mark the permissions of add_ec2_ssh_keys to executable"
chmod +x add_ec2_ssh_key.sh
