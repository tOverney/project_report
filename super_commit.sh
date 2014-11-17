#!/bin/sh

cd sliderust-master/
./build.sh
cd ..

git add .
git commit -m $1
git push

git checkout gh-pages
git checkout master sliderust-master/
git commit -m "Automatic update of the slideshow"
git push -f
git checkout master