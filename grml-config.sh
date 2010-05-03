#!/bin/sh
wget -O .screenrc     http://git.grml.org/f/grml-etc-core/etc/grml/screenrc_generic
wget -O .vimrc        http://git.grml.org/f/grml-etc-core/etc/vim/vimrc 
wget -O .zshrc        http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
# optional:
# wget -O .zshrc.local        http://git.grml.org/f/grml-etc-core/etc/skel/.zshrc
echo "Optionally you might want to run:"
echo "wget -O .zshrc.local   http://git.grml.org/f/grml-etc-core/etc/skel/.zshrc"
echo
echo "Please report bugs to the grml-team: http://grml.org/bugs/"
