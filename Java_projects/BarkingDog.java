public class BarkingDog {
    public static boolean shouldWakeUp(boolean currently, int hourOfDay){
        boolean result;
        if (hourOfDay < 0 || hourOfDay > 23){
            result = false;
        }
        else if (currently == true && hourOfDay > 22 | hourOfDay < 8) {
            result = true;
        }
        else {
            result = false;
        }
        return result;
    }
    public static void main (String args[]){
        System.out.println(shouldWakeUp(true, 1));
        System.out.println(shouldWakeUp(true, 8));
        System.out.println(shouldWakeUp(true, -1));
        System.out.println(shouldWakeUp(false, 2));

    }
    
}
