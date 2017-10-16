#!/bin/sh

git pull

for file in *.sketch
do
  f=${file%.sketch}
  cp $file _sketch/$f.zip
  unzip -o _sketch/$f.zip -d _sketch/$f
  rm _sketch/$f.zip
  git add _sketch/$f
done

git add push.sh
git add pull.sh
git add .gitignore

git commit -m "$1"
