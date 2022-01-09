public class FirstDigitEqualsLast {
    
    public static boolean isLastequalsLast(int number){
        if (number != 0 && number < 0){
            number*= (-1);
        }
        int digit = number%10;
        int first = 0;
        while (number >= 0){
            number/= 10;
            if(number >0){
                first = number;
            }
            
            else{
                break;
            }            
        }        
        if (digit == first){
            return true;
        }
        else{
            return false;
        }
    }
    public static void main(String args[]){
        System.out.println(isLastequalsLast(131));
        System.out.println(isLastequalsLast(-131));
        System.out.println(isLastequalsLast(707));
    }
}
