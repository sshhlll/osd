#!/bin/bash

echo "--- 1. 'DB' 폴더 확인 및 생성 ---"
if [ ! -d "DB" ]; then
    echo "'DB' 폴더가 없어 새로 생성합니다."
    mkdir DB 
else
    echo "'DB' 폴더가 이미 존재합니다."
fi

echo "--- 2. 'DB' 폴더에 5개 파일 생성 ---"
touch DB/file1.txt DB/file2.txt DB/file3.txt DB/file4.txt DB/file5.txt 
ls -l DB

echo "--- 3. 5개 파일 압축 (files.zip) ---"
# zip <압축파일명> <압축할 파일들>
zip DB/files.zip DB/file*.txt 
echo "'DB/files.zip' 파일이 생성되었습니다."

echo "--- 4. 'train' 폴더 생성 ---"
mkdir -p train 

echo "--- 5. 'train' 폴더에 파일 링크 생성 ---"
# DB 폴더와 train 폴더가 같은 위치에 있다고 가정하고 상대 경로 사용
ln -s ../DB/file1.txt train/link1.txt 
ln -s ../DB/file2.txt train/link2.txt
ln -s ../DB/file3.txt train/link3.txt
ln -s ../DB/file4.txt train/link4.txt
ln -s ../DB/file5.txt train/link5.txt

echo "'train' 폴더의 링크 목록:"
ls -l train

echo "--- 작업 완료 ---"
