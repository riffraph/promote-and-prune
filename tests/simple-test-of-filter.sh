#!/bin/sh

TESTDATAFOLDER=./simpleTestOfFilterDataset

# simple test of filter

mkdir -p $TESTDATAFOLDER/folder1

head -c 8 /dev/urandom > $TESTDATAFOLDER/folder1/file1
head -c 1024 /dev/urandom > $TESTDATAFOLDER/folder1/file2


identify.sh $TESTDATAFOLDER
promote.sh $TESTDATAFOLDER


# rm -rf $TESTDATAFOLDER
