public class SecondsAndMinutesChallenge {
    public static long hours(int minutes){
        long result ;
        if (minutes < 0){
            System.out.println("Invalid value");
            return -1;
        }
        else{
            result = minutes/60;
            return result;
        }
    }

    public static void seconds(int minutes){
        long resultHours;
        int moreThan60;
        int restMinutes;
        long seconds;
        if (minutes<0){
            System.out.println("Invalid value.");
          
        }
        else{
            if (minutes%60 != 0){
                restMinutes= minutes%60;
                moreThan60 = minutes - restMinutes;
                resultHours = hours(moreThan60);
                System.out.println (minutes+ " minutes are "+ resultHours+ " hours and " + restMinutes+ " minutes.");
                
            }
            else{
                
                resultHours = hours(minutes);
                System.out.println (minutes+ " minutes are "+ resultHours+ " hours");

            }
        }
    }

    public static void main(String args[]) {
        seconds(345);
    }
}
