#!/bin/sh
set -e

echo "-- IDENTIFY --"

find $1 -size 1k -print | xargs ls -sd