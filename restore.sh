#!/usr/bin/env bash
read -r -p "Restore? Are you sure? [y/n]" response
if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
  cp .vimrc ~
  cp .tmux.conf ~
  mkdir -p ~/.config/nvim
  mkdir -p ~/.config/fish/functions
  cp .config/nvim/init.vim ~/.config/nvim
  cp .config/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
fi
