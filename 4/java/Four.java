public class Four
{
	public static void main(String[] args)
	{
		for (int b=999; b>100; b--)
		{	
			for (int p=999; p>100; p--)
			{
				int a=p*b;
				String check=a+"";
				String reverse = new StringBuilder(check).reverse().toString();
				if (reverse.equals(check))
				{
					System.out.println(a);
					return;
				}
			}
		}
	}
}