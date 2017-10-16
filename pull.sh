#!/bin/sh
git pull
cd _sketch
for file in *
do
  printf "$file.zip\n"
  cd $file/
  ls
  zip $file.zip -r *
  cp $file.zip ../../$file.sketch
  rm $file.zip
  cd ..
done
