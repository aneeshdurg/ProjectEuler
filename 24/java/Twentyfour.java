import java.util.*;
public class Twentyfour
{
	public static void main(String[] args)
	{
		LinkedList<Integer> digits = new LinkedList<Integer>();
		for(int i=0; i<10; i++)
		{
			digits.add(i);
		}
		System.out.println(solution(1000000, 9, digits).toString());
	}
	public static int factorial(int n)
	{
		if (n == 1)
			return 1;
		return n*factorial(n-1);
	}
	public static LinkedList<Integer> solution (int p, int n, LinkedList<Integer> digits)
	{
		LinkedList<Integer> result = new LinkedList<Integer>();
		while (n > 0)
		{
			result.add(digits.get(p/factorial(n)));
			digits.remove(p/factorial(n));
			p=p%factorial(n);
			n--;
		}
		result.add(digits.get(digits.size()-1));
		return result;
	}
}