import java.util.Scanner;

public class Arrays {

    private static Scanner scanner = new Scanner(System.in);  

    public static int[] getIntegers(int number){
        
        int[] values = new int[number];
        System.out.println("Please type in "+number+" numbers:\r");
        for(int i = 0; i < number; i++){
            values[i] = scanner.nextInt();
        }
        
        return values;
    }

    public static void printArray(int[] array){
        for(int i = 0; i < array.length; i++){
            System.out.println("Element "+i+" contents "+array[i]);
        }
    }

    public static int[] sortIntegers(int[] array){
        int[] sorted = new int[array.length];
        for(int i = 0; i <sorted.length;i++){
            sorted[i]= array[i];
        }
        
        return sorted;
    }

    public static void main(String[] args)  {
        
        int[] myIntegers = getIntegers(5);
        int[] sorted = sortIntegers(myIntegers);
        printArray(sorted);



    }
    
}
