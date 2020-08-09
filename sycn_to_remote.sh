#!/bin/bash
cp ~/.vimrc .
cp ~/.tmux.conf .
cp -r ~/.config/nvim/* .config/nvim/
git add .
git commit -m update
git push
