public class Some_calculation {
    public static void main(String[] args) {

        double a = 20.00d;
        double b = 80.00d;
        double c = (a+b)*100.00d;
        double d = c % 40.00;
        boolean e = (d == 0 )? true : false;
        System.out.println(c);
        System.out.println(d);
        System.out.println(e);
        if (!e){
            System.out.println("Got some remainder");
        }
        else System.out.println ("Got no remainder");
        
    }
}