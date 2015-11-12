public class Two
{
	public static void main(String[] args)
	{
		long result=0;
		long[] fib={1, 1};
		while(fib[1]<4000000)
		{
			if (fib[1]%2==0)
			{
				result+=fib[1];
			}
			long temp=fib[1];
			fib[1]+=fib[0];
			fib[0]=temp;
		}
		System.out.println(result);

	}
}
