#!/bin/sh

TESTDATAFOLDER=./testNestedFoldersDataset

# test of nested folders

mkdir -p $TESTDATAFOLDER/folder1/folder1a

head -c 8 /dev/urandom > $TESTDATAFOLDER/folder1/folder1a/file1
head -c 1024 /dev/urandom > $TESTDATAFOLDER/folder1/folder1a/file2


identify.sh $TESTDATAFOLDER
promote.sh $TESTDATAFOLDER


# rm -rf $TESTDATAFOLDER
