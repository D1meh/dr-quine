def function():
	a = 5

#comment

if __name__ == '__main__':
	s = "def function():{0}{1}a = 5{0}{0}#comment{0}{0}if __name__ == '__main__':{0}{1}s = {2}{3}{2}{0}{1}function() #comment{0}{1}print(s.format(chr(10), chr(9), chr(34), s))"
	function() #comment
	print(s.format(chr(10), chr(9), chr(34), s))
