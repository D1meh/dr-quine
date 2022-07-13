import os

if __name__ == '__main__':
	i = 5
	if i > 0:
		s = "import os{0}{0}if __name__ == '__main__':{0}{1}i = {4}{0}{1}if i > 0:{0}{1}{1}s = {2}{3}{2}{0}{1}{1}file = {2}Sully_{2} + str(i) + {2}.py{2}{0}{1}{1}if os.path.exists(file):{0}{1}{1}{1}i -= 1{0}{1}{1}{1}file = {2}Sully_{2} + str(i) + {2}.py{2}{0}{1}{1}with open(file, {2}w+{2}) as fd:{0}{1}{1}{1}fd.write(s.format(chr(10), chr(9), chr(34), s, i)){0}{1}{1}if (i > 0):{0}{1}{1}{1}os.system({2}python3 {2} + file)"
		file = "Sully_" + str(i) + ".py"
		if os.path.exists(file):
			i -= 1
			file = "Sully_" + str(i) + ".py"
		with open(file, "w+") as fd:
			fd.write(s.format(chr(10), chr(9), chr(34), s, i))
		if (i > 0):
			os.system("python3 " + file)