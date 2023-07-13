#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

initialize () {
  case ${OSTYPE} in
    darwin*)
      ;;

    linux*)
        sudo apt install zsh
      ;;

    *)
      echo "==========>>> $(tput setaf 1)Working only OSX / Ubuntu!!$(tput sgr0) <<<=========="
      exit 1
      ;;
  esac

  [ ${SHELL} != "/bin/zsh"  ] && chsh -s /bin/zsh

  [ ! -d ${HOME}/.nvm ] && git clone https://github.com/creationix/nvm.git ${HOME}/.nvm
  [ ! -d ${HOME}/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  if [ ! -d ${HOME}/.oh-my-zsh/custom/themes/powerlevel9k ]; then
    mkdir -p ${HOME}/.oh-my-zsh/custom/themes/powerlevel9k
    git clone https://github.com/bhilburn/powerlevel9k.git ${HOME}/.oh-my-zsh/custom/themes/powerlevel9k
  fi

  [ ! -d ${HOME}/.zplug ] && git clone https://github.com/zplug/zplug.git ${HOME}/.zplug
}

initialize
