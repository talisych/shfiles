#!/bin/bash

mkdir -p $HOME/local
mkdir -p $HOME/tmp

cd $HOME/tmp
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure --prefix=$HOME/local
make
make install

cd $HOME/tmp
wget https://sourceforge.net/projects/cscope/files/cscope/v15.9/cscope-15.9.tar.gz/download
mv download cscope-15.9.tar.gz
tar xf cscope-15.9.tar.gz
cd cscope-15.9
./configure --prefix=$HOME/local
make
make install
