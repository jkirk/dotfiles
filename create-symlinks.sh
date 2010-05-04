#!/bin/sh

SCRIPT=$(readlink -f $0)
CONFIGS=$(dirname ${SCRIPT})


for config in ${CONFIGS}/.*; do
	echo $config
done

ln -s ${CONFIGS}/.zshrc ${HOME}/.zshrc
ln -s ${CONFIGS}/.zshrc.local ${HOME}/.zshrc.local
ln -s ${CONFIGS}/.vimrc ${HOME}/.vimrc
ln -s ${CONFIGS}/.screenrc ${HOME}/.screenrc
ln -s ${CONFIGS}/.todo ${HOME}/.todo
ln -s ${CONFIGS}/.gitconfig ${HOME}/.gitconfig
ln -s ${CONFIGS}/.hgrc ${HOME}/.hgrc

