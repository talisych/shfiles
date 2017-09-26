#!/bin/bash

function remove_all(){
    echo "Remove old cscope and ctag files."
    rm -rf cscope.*
    rm -rf tags
}

function create_all(){
    echo "Create new cscope and ctag files."
    find `pwd` -name "*.[ch]" > cscope.files
    cscope -bqk -i cscope.files
    ctags -R --exclude=.svn
}

if [ -e cscope.files ]; then
    remove_all
fi

create_all
