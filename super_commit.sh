#!/bin/sh

cd sliderust-master/
./build.sh
cd ..

git add .
git commit -m "$1"
git push origin master

git checkout gh-pages
git checkout master sliderust-master/
git commit -m "Automatic update of the slideshow"
git push -f origin gh-pages
git checkout master