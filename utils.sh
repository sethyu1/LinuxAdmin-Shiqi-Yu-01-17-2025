#! /usr/bin/env bash

echo "utils just ran!"
alias ll='ls -laFh'
alias list="la -laFh"
alias grep='grep -- color=auto'


function git-acp(){
    git add .
    git commit -m 'This was commited with git-acp'
    echo "git push would've run now!"
    #git push
}

git-acp