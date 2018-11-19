#! /bin/bash
rm -rf 1 
mkdir 1 && cd 1

mkdir -v folder1 folder2
touch file1 file2 && cp file{1,2} folder1
tar cz -f folder2/file.tar.gz folder1 file{1,2} 
# ls -lRsh | head -n 5
ls -lR