#!/usr/bin/env python

from sys import argv

f = open(argv[1], "rw")
f_out = open("tmp", "w")

for i, line in enumerate(f):
    if i == 0:
        f_out.write("\"index\",\"starting\",\"ending\",\"total\"\n")
    else:
        f_out.write(str(i) + "," + line)

f.close()
f_out.close()
    
