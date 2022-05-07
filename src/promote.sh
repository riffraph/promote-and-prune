#!/bin/bash
set -e

function getInput() {
    while read -r size path; do
        rootFolder=$(echo $path | sed 's/\/.*$//g')

        mv $path $rootFolder

        find -d $rootFolder
    done
}

getInput