public class Sum3and5Challenge {
     public static void main(String [] args){
        int result =0;
        int counter = 0;
        for (int i= 1; i<1000; i++){
            if (i%3==0 && i%5==0){
                result += i;
                counter+=1;
                System.out.println("the number is: " +i);
                System.out.println("Sum of numbers that can be divided through 3 and 5 is: "+ result);
                if(counter==5){
                    break;
                }
            }
        }
     }
}
