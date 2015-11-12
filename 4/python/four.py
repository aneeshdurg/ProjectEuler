for i in xrange(899):
	for j in xrange(899):
		p=(1000-1-i)*(1000-1-j)
		check=str(p)
		reverse=check[::-1]
		if reverse==check:
			print check
			exit()