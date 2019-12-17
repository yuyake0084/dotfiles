#!/bin/bash

set -u
DOT_DIRECTORY="${HOME}/dotfiles"

echo "==========>>> link home directory dotfiles <<<=========="
cd ${DOT_DIRECTORY}

# ドットファイルをHOMEにコピー
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

      if [ ! -e ~/Library/Fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf ]; then
        cd ${HOME}/Library/Fonts
        curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
        cd ${HOME}
      fi
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

  if [[ ! -e ${HOME}/.cache/dein ]]; then
    mkdir -p ${HOME}/.cache/dein
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ${HOME}/.cache/dein
    rm -rf ./installer.sh
    cd ${HOME}/.cache/dein/repos/github.com/Shougo/dein.vim
    git checkout 1.0
    cd ${HOME}
    vi -u .vimrc
  fi

  [ ! -d ${HOME}/.nvm ] && git clone https://github.com/creationix/nvm.git ${HOME}/.nvm
  [ ! -d ${HOME}/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  if [ ! -d ${HOME}/.oh-my-zsh/custom/themes/powerlevel9k ]; then
    mkdir -p ${HOME}/.oh-my-zsh/custom/themes/powerlevel9k
    git clone https://github.com/bhilburn/powerlevel9k.git ${HOME}/.oh-my-zsh/custom/themes/powerlevel9k
  fi

  [ ! -d ${HOME}/.zplug ] && git clone https://github.com/zplug/zplug.git ${HOME}/.zplug
}

initialize
