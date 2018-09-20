cp ~/.vimrc .
cp ~/.config/nvim/init.vim .
git diff
read -r -p "Are you sure? [y/n]" response
if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
  git add .
  git commit -m "Updated dotfiles"
  git push origin HEAD
fi
