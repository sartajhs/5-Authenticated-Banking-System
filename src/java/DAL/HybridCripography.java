package DAL;

public class HybridCripography 
{
        String st1="";
	public HybridCripography(String str)
	{
		String str1=str;
		for(int i=0;i<str1.length();i++)
		{
			char p=str1.charAt(i);
			if(p>=65&&p<=77)
			{
				p+=13;
			}
			else if(p>=78&&p<=90)
			{
				p-=13;
			}
			else if(p>=97&&p<=109)
			{
				p+=13;
			}
			else if(p>=110&&p<=122)
			{
				p-=13;
			}
			if(p>=48&&p<=52)
			{
				p+=5;
			}
			else if(p>=53&&p<=57)
			{
				p-=5;
			}
			//char n=(char) p;
			st1=st1+p;
		}
		
	}
        public String getreturn()
        {
            return st1;
        }
/*	public static void main(String[] args) 
	{
		EncrypDeceyp e = new EncrypDeceyp();
	}*/
}