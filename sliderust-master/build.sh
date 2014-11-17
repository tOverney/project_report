#!/bin/sh

./strip_comments.py
rustdoc slides_stripped.md -o . --html-in-header=header.inc.html --markdown-no-toc
cp slides_stripped.html index.html
rm slides_stripped.md