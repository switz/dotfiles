#!/usr/bin/env bash
cp ~/.vimrc .
cp ~/.tmux.conf .
cp ~/.config/nvim/init.vim .config/nvim
cp ~/.config/fish/functions/fish_prompt.fish .config/fish/functions/fish_prompt.fish
cp ~/.hammerspoon/init.lua .hammerspoon.lua

git diff
read -r -p "Are you sure? [y/n]" response
if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
  git add .
  git commit -m "Updated dotfiles"
  git push origin HEAD
fi
