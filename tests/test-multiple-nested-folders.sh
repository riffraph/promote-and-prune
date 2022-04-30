#!/bin/sh

TESTDATAFOLDER=./testMultipleNestedFoldersDataset

# test of multiple nested folders

mkdir -p $TESTDATAFOLDER/folder1/folder1a
mkdir -p $TESTDATAFOLDER/folder1/folder1b
mkdir -p $TESTDATAFOLDER/folder1/folder1c

head -c 8 /dev/urandom > $TESTDATAFOLDER/folder1/folder1a/file1a
head -c 1024 /dev/urandom > $TESTDATAFOLDER/folder1/folder1a/file2a
head -c 8 /dev/urandom > $TESTDATAFOLDER/folder1/folder1b/file1b
head -c 1024 /dev/urandom > $TESTDATAFOLDER/folder1/folder1b/file2b
head -c 8 /dev/urandom > $TESTDATAFOLDER/folder1/folder1c/file1c
head -c 1024 /dev/urandom > $TESTDATAFOLDER/folder1/folder1c/file2c

identify.sh $TESTDATAFOLDER
promote.sh $TESTDATAFOLDER


# rm -rf $TESTDATAFOLDER
