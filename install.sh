#!/bin/bash
echo "Welcome to sysinfo-bash, make sure you are in the directory with 'install.sh' before proceeding."

contents=$(ls)
echo "Contents: " $contents

echo "Are you in the correct directory? "
read choice

case $choice in
    y|Y) 

    CURRENT_DIR="$(pwd)"
    DEST_DIR="/bin/sysinfo-bash"


    mkdir -p "$DEST_DIR"
    cp -r "$CURRENT_DIR"/* "$DEST_DIR"/
    chmod +x "$DEST_DIR"/*

    echo "alias sysinfo='/bin/sysinfo-bash/main.sh'" >> ~/.bashrc
    source ~/.bashrc
    ;;

    n|N)
    echo "Please navigate to the directory containing 'install.sh'"
    ;;

esac