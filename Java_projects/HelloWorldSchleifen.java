public class HelloWorldSchleifen {
    public static void helloFor (int anzahl){
        for (int i=0; i<anzahl; i++){
            System.out.println("Hallo Welt");
        }
    }
    public static void helloWhile (int anzahl){
        int i = 0;
        while(i < anzahl){
            System.out.println("Hallo Welt");
            i++;
        }
    }
    public static void helloDo(int anzahl){
        int i = 0;
        do{
            System.out.println("Hallo Welt");
            i++;
        }
            while (i<= anzahl-1);
        
    }

    public static void main (String []args){
        helloFor(1);
        helloWhile(1);
        helloDo(3);
    }
    
}
