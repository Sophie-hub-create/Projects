import java.io.PrintStream;

public class StarSign {

    public static void main(String[] args) {

        
        //The tests are not checking the main, so you can modify it freely.
        //NB: If the tests don't seem to pass, you should try the methods here
        //in the main to make sure they print the correct shapes!
        printStars(3);
        System.out.println("\n---");  // printing --- between the shapes
        printSquare(4);
        System.out.println("\n---");
        printRectangle(5, 6);
        System.out.println("\n---");
        printRectangle(17, 3);
        System.out.println("\n---");
        printTriangle(4);
      
        
   
    }

    public static void printStars(int number) {
        int count = 0;
        while(count < number){
            System.out.print("*");
            count++;
        }
    }
        

    public static void printSquare(int size) {
        
        int count2 = 0;
        while(count2<size){
            int count = 0;
            while(count < size){
                System.out.print("*");
                count++;
            }
            System.out.println("");
            count2++;
        }
    }

    public static void printRectangle(int width, int height) {
        int count2 = 0;
        while(count2<height){
            int count = 0;
            while(count < width){
                System.out.print("*");
                count++;
            }
            System.out.println("");
            count2++;
        }
    }
        
    

    public static void printTriangle(int size) {
        for(int i = 0; i < size; i++)
        {
            for(int j=0; j<=i; j++)
            {
                System.out.print("*");
            }
        System.out.print("\n");
    }
}
}
