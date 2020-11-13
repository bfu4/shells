#!/bin/bash

printf "\033[1;35m[MAKING DIRECTORY]\033[0m\n"
mkdir /usr/local/share/base64
cp ToBase64 /usr/local/share/base64

echo

echo "\033[1;35m[INSTALLING SCRIPT]\033[0m\n"
cp base64 /usr/local/bin
echo "done."

read -p "would you like to clear all files? (y/n)" d

case $d in
"y") remove;;
*) exit;;


remove() {
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd) " 
cd ..
rm -rf $DIR/base64
rm -rf $DIR/ToBase64.class
rm -rf $DIR/README.md
rm -rf $DIR/setup.sh
cd $DIR
}
