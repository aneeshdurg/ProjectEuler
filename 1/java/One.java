public class One
{
	public static void main(String[] args)
	{
		System.out.println(solution(1000, 3, 5));
	}
	public static int solution(int x, int y, int z)
	{
		x--;
		return y*sum(x/y) + z*sum(x/z) - (y*z)*sum(x/(y*z));
	}
	public static int sum(int x)
	{
		if (x==0)
			return 0;
		return x+sum(x-1);
	}
}