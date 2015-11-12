print solution(100)	

def solution(x):
	totalsum = x*(x+1)/2
	values = []

	for i in range(1, x+1):
		values.append(i*(totalsum - i))

	return sum(values)	