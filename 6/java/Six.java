public class Six
{
	public static void main(String[] args)
	{
		System.out.println(solution(100));
	}
	public static int solution (int x)
	{
		int totalsum = x*(x+1)/2;
		int[] values = new int[x];
		int sum = 0;
		
		for (int i=1; i<=x; i++)
			values[i-1] = i * (totalsum - i);
		
		for (int value : values)
			sum+=value;

		return sum;
	}
}