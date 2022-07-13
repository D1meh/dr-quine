FILE = "Grace_kid.py"
CONTENT = "FILE = {2}{0}{2}{1}CONTENT = {2}{3}{2}{1}OPEN = open{1}{1}with OPEN(FILE, {2}w+{2}) as fd:{1}{4}fd.write(CONTENT.format(FILE, chr(10), chr(34), CONTENT, chr(9)))"
OPEN = open

with OPEN(FILE, "w+") as fd:
	fd.write(CONTENT.format(FILE, chr(10), chr(34), CONTENT, chr(9)))