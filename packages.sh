#!/usr/bin/env bash 
cd dotfiles && pacman -Qei | awk '/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }' > ./packages.txt && git add . && git commit -m "package update" && git push
# To be stored in ~/Important/package_management
