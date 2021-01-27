#!/bin/sh

# Source: https://github.com/mjackson/dotfiles/blob/master/setup-git

set -e

git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.ls ls-files
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.lon 'log --oneline --numstat'
git config --global alias.lg 'log --oneline --graph'

git config --global color.ui true

git config --global core.editor vim
git config --global core.excludesfile "$HOME/.gitignore"

git config --global credential.helper osxkeychain

git config --global push.default current

git config --global user.email "10487949+hellerphilipp@users.noreply.github.com"
git config --global user.name "Philipp Heller"
