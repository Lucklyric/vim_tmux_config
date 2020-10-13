#!/bin/bash
git pull
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -srf .vimrc ~/.vimrc 
ln -srf .tmux.conf ~/.tmux.conf
ln -srfT .config/nvim ~/.config/nvim
