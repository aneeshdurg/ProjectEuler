def multsum(x):
	y = 0
	i = 0
	while i<1000:
		y += i
		i += x
	return y	
result = multsum(3) + multsum(5) - multsum(15)
print result