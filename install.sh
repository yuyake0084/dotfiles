#!/bin/bash

set -u
DOT_DIRECTORY="${HOME}/dotfiles"

echo "==========>>> link home directory dotfiles <<<=========="
cd ${DOT_DIRECTORY}

for f in .??*
do
  [ "$f" = ".git" ] && continue
  [ "$f" = ".DS_Store" ] && continue
  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

source ./lib/brew

initialize () {
  case ${OSTYPE} in
    darwin*)
      install_brew

      if [ ! -e ~/Library/Fonts/Cica-Regular.ttf ]; then
        wget https://github.com/miiton/Cica/releases/download/v2.1.0/Cica_v2.1.0.zip
        unar Cica_v2.1.0.zip
        cp -f Cica_v2.1.0/Cica*.ttf ${HOME}/Library/Fonts/
        rm -rf Cica_v2.1.0*
      fi
      ;;
    *)
      echo "==========>>> $(tput setaf 1)Working only OSX / Ubuntu!!$(tput sgr0) <<<=========="
      exit 1
      ;;
  esac

  [ ${SHELL} != "/bin/zsh"  ] && chsh -s /bin/zsh

  if [[ ! -e ${HOME}/.vim/dein/repos/github.com/Shougo/dein.vim ]]; then
    mkdir -p ${HOME}/.vim/dein/repos/github.com/Shougo/dein.vim
    git clone https://github.com/Shougo/dein.vim.git ${HOME}/.vim/dein/repos/github.com/Shougo/dein.vim
    vi
  fi

  [ ! -d ${HOME}/.nvm ] && git clone https://github.com/creationix/nvm.git ${HOME}/.nvm
  [ ! -d ${HOME}/.zplug ] && curl -sL zplug.sh/installer | zsh
}

initialize
