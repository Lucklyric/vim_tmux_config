#!/bin/bash
cp ~/.vimrc .
cp ~/.tmux.conf .
git add .
git commit -m update
git push
