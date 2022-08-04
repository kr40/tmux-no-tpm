#!/usr/bin/env bash

# Title: kr40's TMUX-Config
# Description: Adds useful aliases to zshrc in kali
# Author: Kartik Rao <kr40.git@gmail.com>
# Date: 2022-08-04
# Version: 1.0.0

function bannerSimple() {
  local msg="${2} ${1} ${2}"
  local edge
  edge=${msg//?/$2}
  echo "${edge}"
  echo "$(tput bold)${msg}$(tput sgr0)"
  echo "${edge}"
  echo
}

bannerSimple "kr40's TMUX Config" "*"

echo Adding .tmux.conf

cp .tmux.conf ~/.tmux.conf

echo Adding tat

cp tat.sh ~/tat.sh
chmod a+x ~/tat.sh
sudo ln -sf ~/tat.sh /usr/bin/tat

echo Adding Aliases and Functions

cat aliases.txt >> ~/.bashrc
cat aliases.txt >> ~/.zshrc

echo Please Restart You Terminal

echo Installation Finished! Enjoy..
