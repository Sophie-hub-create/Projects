public class SpeedConverter {
    public static long toMilesPerHour(double kilometersperHour){
        if(kilometersperHour < 0.0){
            return -1;
        }
        else
        {
            kilometersperHour = (kilometersperHour/1.609); 
            long result = Math.round(kilometersperHour);
            return result;
    
        }
    }

    public static void printConversion (double kilometersperHour){
        long result;
        if (kilometersperHour < 0){
            System.out.println("Invalid Value");
        }
        else{
            result = toMilesPerHour(kilometersperHour);
            System.out.println(kilometersperHour + " km/h = " +result + " mi/h");
        }
    }
    
        public static void main (String args []){
            System.out.println(toMilesPerHour(1.5));
            System.out.println(toMilesPerHour(10.25));
            System.out.println(toMilesPerHour(-6.5));
            System.out.println(toMilesPerHour(25.42));
            System.out.println(toMilesPerHour(75.114));

            printConversion(1.5);
            printConversion(10.25);
            printConversion(-6.5);
            printConversion(25.42);
            printConversion(75.114);

        }
    
}
