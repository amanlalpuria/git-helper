#!/bin/sh
# grep is to searching plain text
# sed Stream editor for filtering and transforming text

current_branch=`git branch | grep '*' | sed 's/* //'`

if [ "$current_branch" = "master" ]; then
    echo "You are about to push on branch. Lets try to build the code first"
    
    # code build statement
    node index.js

    if [ $? -eq 0 ]; then
        # tests passed, proceed to prepare commit message
        exit 0
    else
        # some tests failed, prevent from committing broken code on master
        echo "Some tests failed. You are not allowed to commit broken code on master! Aborting the commit."
        exit 1
    fi
fi
