#!/bin/sh

case "$1" in
    --clean)
        rm -rf $HOME/.local/share/Trash/files
        rm -rf $HOME/.local/share/Trash/info
        mkdir $HOME/.local/share/Trash/files
        mkdir $HOME/.local/share/Trash/info
        ;;
    *)
        find $HOME/.local/share/Trash/files/ -maxdepth 1 | wc -l
        ;;
esac
