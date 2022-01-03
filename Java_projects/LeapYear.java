public class LeapYear {
    public static boolean isLeapYear(int year){
        boolean leap= true;
        if (year >= 1 && year <= 9999){
            if(year%4==0){
                if(year%100==0){
                    if(year%400==0){
                        leap = true;
                    }
                    else{
                        leap= false;
                    }
                }
            }
            else{
                leap = false;
            }
        }
        else {
            leap = false;
        }
        return leap;
    }
    public static void main(String args[]){
        System.out.println(isLeapYear(-1600));
        System.out.println(isLeapYear(1600));
        System.out.println(isLeapYear(2017));
        System.out.println(isLeapYear(2000));
        System.out.println(isLeapYear(1800));

    }
    
}
