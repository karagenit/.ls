#!/usr/bin/env bash

if [[ "$1" == ".config" ]]
then
    echo $(ls -a | grep "^\.")
else
    dotfiles=$(ls -a $@ | grep "^\." | wc -l)
    if [ $dotfiles -gt 2 ]
    then
        echo -n ".config "
    fi
    echo $(ls $@)
fi
