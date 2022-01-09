public class DigitSumChallenge {
    
    public static int sumDigits(int number){
        int result= 0;   
        if(number <= 10){
            return -1;
        }
        while (number > 0){
            //125 --> 125%10 = 5  125-5 = 120   120/10 = 12
            result += number%10;            
            number /= 10;
        }
    return result; 
    }   

    public static void main(String args[]){
        System.out.println(sumDigits(1));
        System.out.println(sumDigits(-1));
        System.out.println(sumDigits(125));
        System.out.println(sumDigits(25));
        System.out.println(sumDigits(387));
        System.out.println(sumDigits(32123));

    }
}