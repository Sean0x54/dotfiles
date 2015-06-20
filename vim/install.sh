#!/bin/sh
mkdir -p ~/.vim/backups ~/.vim/swaps ~/.vim/undo

DIR=~/.vim/bundle/vundle
if [ ! -d "$DIR" ]; then
	git clone https://github.com/gmarik/Vundle.vim.git $DIR
fi

FILE=~/.vimrc
if [ ! -r "$FILE" ]; then
	ln -s ~/dotfiles/vim/vimrc $FILE
fi

vim +PluginInstall +qall
