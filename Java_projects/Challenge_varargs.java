public class Challenge_varargs {
    
    public static double average (double... a){
        double average = 0;
        double sum = 0;
        int counter = 0;
        for( int j = 0; j < a.length; j++){
            sum += a[j];
            counter++;
        }
        average = sum/counter;
        return average;
    }
    public static void main(String... args) {
        double d1= 10.0;
        double d2= 20.0;
        double d3= 30.0;
        double d4= 40.0;
        System.out.println(average(d1, d2));
        System.out.println(average(d1, d2, d3));
        System.out.println(average(d1, d2, d3, d4));
      
    }
}


// OUTPUT
// 15.0
// 20.0
// 25.0
