import java.util.Scanner;
public class MinimumElements {

    private static int readInteger(){
        Scanner input = new Scanner(System.in);
        System.out.println("Enter a number");
        int count = input.nextInt();
        return count;
    }

    private static int[] readElements(int count){
        Scanner scanner = new Scanner(System.in);  
        int[]array = new int[count];
        System.out.println("Enter "+count+" numbers");
        for(int i = 0; i<count; i++){
            array[i]= scanner.nextInt();
        }
        return array;
    }

    private static int findMin(int[] array) {

        int min = Integer.MAX_VALUE;

        for(int i=0; i<array.length; i++) {
            int value = array[i];

            if(value < min) {
                min = value;
            }
        }

        return min;
    }

    public static void main(String[] args) {

     
        System.out.println("The minimum element of your numbers was : "+findMin(readElements(readInteger())));
        
    }
    
}
