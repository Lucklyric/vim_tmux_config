#!/bin/bash
git pull
ln -srf .vimrc ~/.vimrc 
ln -srf .tmux.conf ~/.tmux.conf
ln -srfT .config/nvim ~/.config/nvim
# cp .vimrc ~/
# cp .tmux.conf ~/
# cp -r .config ~/
