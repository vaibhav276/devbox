#!/bin/bash

if [[ ! -e ~/.vim/bundle/Vundle.vim/.git ]]
then
   rm -rf ~/.vim/bundle/Vundle.vim
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

rm -f ~/.vimrc
rm -rf ~/vim_temp
git clone https://gist.github.com/vaibhav276/e655ad958b4e29647f7c ~/vim_temp

mv ~/vim_temp/vimrc ~/.vimrc
rm -rf ~/vim_temp

vim +BundleClean! +BundleInstall +qall 2&> /dev/null
