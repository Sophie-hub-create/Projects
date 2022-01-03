public class MegaBytesConverter {

    public static void printMegaBytesAndKiloBytes(int kiloBytes){
        if(kiloBytes<0){
            System.out.println("Invalid Value");
        }
        else if (kiloBytes== 0){
            System.out.println(kiloBytes+" KB = 0 MB and 0 KB");
        }
        else{
            int kb = kiloBytes%1024;
            int mb = kiloBytes/1024;
    
            System.out.println(kiloBytes+" KB = "+mb +" MB and "+ kb+" KB");
            }
        }
    
    public static void main(String args[]) {

        printMegaBytesAndKiloBytes(2500);
        printMegaBytesAndKiloBytes(5000);
        printMegaBytesAndKiloBytes(-1024);
        printMegaBytesAndKiloBytes(20);
        
    }
}
