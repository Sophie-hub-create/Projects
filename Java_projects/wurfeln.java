import java.util.Random;
import java.util.Arrays;

public class wurfeln {

    public static void main (String [] args){

        int min = 1;
		int max = 6;
        Random zufall = new Random();
        int counter1 = 0;
        int counter2 = 0;
        int counter3 = 0;
        int counter4 = 0;
        int counter5 = 0;
        int counter6 = 0;
        
        for (int i= 0; i<100;i++){
            int zufallswurf = zufall.nextInt(max+min)+min;
            switch(zufallswurf){
                case 1:
                counter1 ++;
                case 2:
                counter2 ++;
                case 3:
                counter3 ++;
                case 4:
                counter4 ++;
                case 5:
                counter5 ++;
                case 6:
                counter6 ++;
            }           
        }
        System.out.println(counter1+" "+counter2+" "+counter3+" "+counter4+" "+counter5+" "+counter6);
        
    }
    
}
