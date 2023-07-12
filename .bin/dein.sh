#!/bin/bash

# if [[ ! -e ${HOME}/.cache/dein ]]; then
mkdir -p ${HOME}/.cache/dein
wget -O- https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
sh ./installer.sh ${HOME}/.cache/dein
rm -rf ./installer.sh
cd ${HOME}/.cache/dein/repos/github.com/Shougo/dein.vim
git checkout 1.0
cd ${HOME}
vi -u .vimrc
# fi
