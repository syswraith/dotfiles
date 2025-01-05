#!/usr/bin/env bash 
pacman -Qei | awk '/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }' > ./packages.txt && git add . && git commit -m "package update" && git push && cd ~
