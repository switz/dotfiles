read -r -p "Restore? Are you sure? [y/n]" response
if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
  cp .vimrc ~
  cp .tmux.conf ~
  mkdir -p ~/.config/nvim
  cp .config/nvim/init.vim ~/.config/nvim
fi