#! /usr/bin/env bash

echo "utils just ran!"
alias ll='ls -laFh'
alias list="la -laFh"
alias grep='grep -- color=auto'

function git-acp() {
    if [ -z "$1" ]; then
        echo "Error: Type in a commit message!"
        return 1
    fi
 
    git add .
    git commit -m "$1" || return 2
    echo "git push would've run now!"
    git push && echo "Push successful!" || (echo "failed to push :(" && return 3)
}
