import java.util.Arrays;

public class ReverseArray1 {
    
    private static void reverse(int[] array){
        boolean stop = false;
        int[]reverseArray = new int[array.length];
        for (int j = array.length-1; j>=0;j--){
        for(int i=0; i<array.length;i++){
            reverseArray[i]=array[j];
                }
            }
        System.out.println(Arrays.toString(reverseArray));
        
    }
    public static void main(String[] args) {
        int[]array = new int[]{1,2,3,4};
        System.out.println(Arrays.toString(array));
        reverse(array);

    }
}
