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