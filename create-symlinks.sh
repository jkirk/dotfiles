#!/bin/sh

SCRIPT=$(readlink -f $0)
CONFIGS=$(dirname ${SCRIPT})


for config in ${CONFIGS}/.*; do
	echo $config
done

ln -sf ${CONFIGS}/.zshrc ${HOME}/.zshrc
ln -sf ${CONFIGS}/.zshrc.local ${HOME}/.zshrc.local
ln -sf ${CONFIGS}/.vim ${HOME}
ln -sf ${CONFIGS}/.vimrc ${HOME}/.vimrc
ln -sf ${CONFIGS}/.vimrc.local ${HOME}/.vimrc.local
ln -sf ${CONFIGS}/.quiltrc ${HOME}/.quiltrc
ln -sf ${CONFIGS}/.gvimrc ${HOME}/.gvimrc
ln -sf ${CONFIGS}/.screenrc ${HOME}/.screenrc
ln -sf ${CONFIGS}/.todo ${HOME}
ln -sf ${CONFIGS}/.gitconfig ${HOME}/.gitconfig
ln -sf ${CONFIGS}/.hgrc ${HOME}/.hgrc
ln -sf ${CONFIGS}/.dput.cf ${HOME}/.dput.cf

