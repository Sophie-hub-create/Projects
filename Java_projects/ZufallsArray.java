import java.util.Random;
import java.util.Arrays;
public class ZufallsArray {
    public static int[]integerArray(int a, int b){
        int []intArr = new int[a];
        Random zufall = new Random();
        for(int i=0; i <intArr.length; i++){
            intArr[i]= zufall.nextInt(b);
        }
        return intArr;
    }
   
    public static void main (String []args){
       
        //System.out.println(Arrays.toString(integerArray(5,70)));
        int [] a = integerArray(2,30);
        System.out.println(Arrays.toString(a));
        int max =0;      
        for (int i = 0; i <a.length;i++){
            if (a[i]> max){
                max = a[i];
            }
        }
        System.out.println(max);
        int min = 100000;      
        for (int i = 0; i <a.length;i++){
            if (a[i]< min){
                min = a[i];
            }
        }
        System.out.println(min);
        boolean doppelt = false;
       
        for (int i = 0; i <a.length;i++){
            int x= a[i];
            for (int j= 1; j<a.length;j++){
                if(x==a[j]){
                    doppelt = true;
                }
            }
       
        }
        System.out.println(doppelt);


    }
    
}
