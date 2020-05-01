#!/bin/bash

function file_num {
    echo $( ls -l | grep "^-" | wc -l )
}

function check {
    local n=$( file_num )
    
    if [[ $1 -eq $n ]]
    then
        echo "Congratulations! You won!"
        return 0
    elif [[ $1 -lt $n ]]
    then
        echo "Nope. Try guessing something bigger."
        return 1
    else
        echo "Nope. Try guessing something smaller."
        return 1
    fi
}

function main {
    read -p "Guess the number of files in the current directory: " guess
    
    check $guess
    local res=$?

    while [[ $res -ne 0 ]]
    do
        read guess
        check $guess
        let res=$?
    done
}

main
