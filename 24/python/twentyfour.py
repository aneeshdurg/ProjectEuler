def factorial(n):
	if n == 1:
		return 1
	return n*factorial(n-1)

def solution(p, n, digits):
	if n == 0:
		return digits 
	thisdigit = digits[p/factorial(n)]
	digits.pop(p/factorial(n))
	return [thisdigit]+solution(p%factorial(n), n-1, digits)

digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print solution(1000000, 9, digits)	
