#!/bin/sh
set -e

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 [directory] [file-size]"
    exit 1
fi

find $1 -size $2 -print | xargs ls -sd