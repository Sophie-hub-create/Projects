public class NumberPalindrome {
    
    public static boolean isPalindrome(int number){
        if(number<0){
            number*=(-1);
        }
        int numberBefore= number;
        boolean result= false;
        int reverse = 0;
        while (number > 0){
            //125 --> 125%10 = 5  125-5 = 120   120/10 = 12
            reverse+= number%10;  
            reverse*=10;          
            number /= 10;
        }
        reverse/=10;  ///wieso ?????????
        if(reverse == numberBefore){
            result = true;            
        }
       
        return result; 
    }   

    public static void main(String[] args) {
        System.out.println(isPalindrome(1001));
        System.out.println(isPalindrome(-1221));
        System.out.println(isPalindrome(707));
        System.out.println(isPalindrome(11212));
    }
}
