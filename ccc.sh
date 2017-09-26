#!/bin/sh

rm -rf cscope.*
rm tags

find `pwd` -name "*.[ch]" > cscope.files
cscope -bqk -i cscope.files

ctags -R --exclude=.svn

