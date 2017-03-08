#!/bin/bash
set -e

echo "Creating a symbolic link for Vim config"

if ! [[ -a "${HOME}/.vimrc" ]]; then
  ln -s ~/.vim/.vimrc ~/.vimrc
  echo "Done."
else echo "Already configured.";

fi

