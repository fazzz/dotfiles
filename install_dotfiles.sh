#!/bin/sh

DOTPATH=~/.dotfiles

for f in .??*; do
    [ "$f" = ".git" ] && continue

    cp -r $DOTPATH/$f ~/
done

mkdir $HOME/gomibako
