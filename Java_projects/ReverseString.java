import java.util.Scanner;

public class ReverseString
{
	public static void main(String[] args) {
		var scanner = new Scanner(System.in);
		String text = scanner.nextLine();
		char[] arr = text.toCharArray();
		
		//your code goes here
		

		 String rev="";  
    	for(int i=arr.length-1;i>=0;i--){  
        	rev+=arr[i];  
    	}  
    	System.out.println(rev);  
		
	}
}
