import java.util.Arrays;
public class ReverseArray {
    
    private static void reverse(int[]array){
        System.out.println("Array = "+ Arrays.toString(array));
        int[]result=new int[array.length];
        int count=0;
        for(int i=array.length-1; i>=0;i--){
            result[count]= array[i];
            count+=1;
        }
        System.out.println("Reversed array = "+ Arrays.toString(result));
    }
    public static void main(String[] args) {
        int[]array=new int[] {1,2,3,4};
        reverse(array);
    }
    
}
