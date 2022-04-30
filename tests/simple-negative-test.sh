#!/bin/sh

TESTDATAFOLDER=./simpleNegativeTestDataset

# simple negative test

mkdir -p $TESTDATAFOLDER/folder1

head -c 1 /dev/urandom > $TESTDATAFOLDER/folder1/file1

identify.sh $TESTDATAFOLDER
promote.sh $TESTDATAFOLDER


# rm -rf $TESTDATAFOLDER
