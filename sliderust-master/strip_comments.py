#!/usr/bin/env python

import re

file = open('slides.md', "r")
content = file.read()
file.close()
content = re.sub("// [^\n]*\n","", content)
output_file = open('slides_stripped.md',"w+")
output_file.write(content)
output_file.close() 