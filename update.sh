#!/bin/bash
git pull
cp .vimrc ~/
cp .tmux.conf ~/
ln -sf ~/.vimrc ~/.config/nvim/init.vim
