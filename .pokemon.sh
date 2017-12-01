#!/bin/bash

# ポケモンのテーマ設定
#if pokemon > /dev/null 2>&1; then
#  pokemon groudon
#  return 0
#fi

if test ! $(which pokemon); then
  echo "no"
else
  pokemon unown
  return 0
fi

# unown # アンノーン
# suicune #スイクン
# groudon # グラードン
# dialga #ディアルガ
