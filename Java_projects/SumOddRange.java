public class SumOddRange {
    
    public static boolean isOdd(int number){
        boolean result;
        if (number <= 0){
            result =false;
        }
        else if (number%2 !=0){
            result= true;
        }
        else{
            result= false;
        }
        return result;
    }

    public static int sumOdd(int start, int end){
        int result=0;
        if(end >=start && end > 0 && start>0){

            for (int i =start; i <= end; i++){
                if(isOdd(i)){
                    result += i;
                }
            }
        }
        else{
            result = -1;
        }
        return result;
    }
    public static void main(String[] args){
        System.out.println(sumOdd(1,100));
        System.out.println(sumOdd(-1,100));
        System.out.println(sumOdd(100,100));
        System.out.println(sumOdd(13,13));
        System.out.println(sumOdd(100,-100));
        System.out.println(sumOdd(100,1000));
        System.out.println(sumOdd(1,11));
    }
}