#!/bin/sh

./strip_comments.py
rustdoc slides_stripped.md -o . --html-in-header=header.inc.html --markdown-no-toc
rm slides_stripped.md