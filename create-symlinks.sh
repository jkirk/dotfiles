#!/bin/sh

SCRIPT=$(readlink -f $0)
CONFIGS=$(dirname ${SCRIPT})

ln -s ${CONFIGS}/.zshrc ${HOME}/.zshrc
ln -s ${CONFIGS}/.vimrc ${HOME}/.vimrc
ln -s ${CONFIGS}/.screenrc ${HOME}/.screenrc

