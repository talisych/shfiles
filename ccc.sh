#!/bin/sh

rm -rf cscope.*
rm tags

find `pwd` -name "*.c" -o -name "*.h" -o -name "*.cpp" > cscope.files
cscope -Rbq -i cscope.files

ctags -R --exclude=.svn

