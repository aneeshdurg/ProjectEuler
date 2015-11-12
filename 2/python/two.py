fib=[1, 1]
result=0
while (fib[1]<4000000):
	if fib[1]%2 == 0:
		result+=fib[1]
	temp=fib[1]
	fib[1]+=fib[0]
	fib[0]=temp
print result	