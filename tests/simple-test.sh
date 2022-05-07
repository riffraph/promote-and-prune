#!/bin/sh

TESTDATAFOLDER=simpleTestDataset

# simple test

mkdir -p $TESTDATAFOLDER/folder1

head -c 1024 /dev/urandom > $TESTDATAFOLDER/folder1/file1

identify.sh $TESTDATAFOLDER 1k
identify.sh $TESTDATAFOLDER 1k | promote.sh


#rm -rf $TESTDATAFOLDER