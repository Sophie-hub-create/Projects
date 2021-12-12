import java.lang.String;
public class ZiffernZahl {
    public static int laengeInt(int a){
        int counter=0;
        String s = String.valueOf(a);
        counter =s.length();
        return counter;

    }

    public static void main (String[]args){
       
        System.out.println(laengeInt(123456));

    }
    
}
