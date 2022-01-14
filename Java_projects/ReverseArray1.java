import java.util.Arrays;

public class ReverseArray1 {
    
    private static void reverse(int[] array){
        int min=0;
        int[]reverseArray = new int[array.length];
        for(int i = 0;i<=array.length-1;i++){
            min=array[i];
            for (int j = array.length-1; j>=0;j--){
                int max=array[j];
            }
        }
        System.out.println(Arrays.toString(array));
    }
    public static void main(String[] args) {
        int[]array = new int[]{1,2,3,4};
        System.out.println(Arrays.toString(array));
        reverse(array);

    }
}
