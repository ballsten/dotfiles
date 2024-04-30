#!/bin/bash
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# install nvim
mkdir -p ~/.config
ln -s $SCRIPTPATH/nvim ~/.config/nvim
