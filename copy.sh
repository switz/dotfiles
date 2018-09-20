cp ~/.vimrc .
git diff
read -r -p "Are you sure? [Y/n]" response
response=${response,,} # tolower
if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
  your-action-here
fi
git add .
git commit -m "Updated dotfiles"
git push origin HEAD
