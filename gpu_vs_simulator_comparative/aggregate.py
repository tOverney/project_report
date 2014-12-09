#!/usr/bin/env python

from sys import argv

content = []

for i, f in enumerate(argv[1:]):
    fd = open(f, "r")
    if i % 2 == 0:
        content.append([fd.readlines()])
    else:
        content[len(content)-1].append(fd.readlines())
    fd.close()

trimmed_content = []

for (f1, f2) in content:
    for i in range(len(f1)):
        if i == 0: continue
        trimmed_content.append("%s,%s" % (f1[i].split(",")[3].strip(), f2[i].split(",")[3].strip()))

print "\"index\",\"total GPU\",\"total sim\""
for (i, e) in enumerate(trimmed_content):
    print "%i,%s" % (i+1, e)

