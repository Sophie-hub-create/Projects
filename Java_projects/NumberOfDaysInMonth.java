public class NumberOfDaysInMonth {
    
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

    public static int getDaysInMonth(int month, int year){
        int x;
        boolean leap;
       
        switch(month){
            case 1:
                x = 31;
                break;
            case 2:
                leap=(isLeapYear(year));
                if(leap == true){
                    x=29;
                }
                else{
                    x=28;
                }
                break;
            case 3:
                x = 31;
                break;
            case 4:
                x = 30;
                break;
            case 5:
                x = 31;
                break;
            case 6:
                x = 30;
                break;
            case 7:
                x = 31;
                break;
            case 8:
                x = 31;
                break;
            case 9:
                x = 30;
                break;
            case 10:
                x = 31;
                break;
            case 11:
                x = 30;
                break;
            case 12:
                x = 31;
                break;
            default:
                x = -1;
                break;
        }
        if(year <1 | year >9999){
            x= -1;
        }
        return x;
    }

    public static void main(String args[]){
        System.out.println(getDaysInMonth(1,2020));
        System.out.println(getDaysInMonth(2,2020));
        System.out.println(getDaysInMonth(2,2018));
        System.out.println(getDaysInMonth(-1,2020));
        System.out.println(getDaysInMonth(1,-2020));
    }
}
