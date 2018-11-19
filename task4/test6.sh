#! /bin/bash

rm -rf test
mkdir test
cd ./test
touch file1 file2
ln file1 file3
ln -s file1 file4
mkdir folder
cp file1 ./folder
cp file2 ./folder

ls -lath

# ln 链接计数