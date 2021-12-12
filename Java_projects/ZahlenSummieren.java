public class ZahlenSummieren {

    public static int summe (int max){
        int counter = 0; 
        for (int i=0; i<=max; i++){
            counter+= i;
        }
        return counter;
    }
    public static long fakultaet (int max){
        long counter = 1;
        for (int i=1; i<=max; i++){
            counter*= i;
        }
        return counter;
    }
    
    public static void main (String[]args){
        System.out.println(summe(100));
        System.out.println(fakultaet(10));
    }
    
}
