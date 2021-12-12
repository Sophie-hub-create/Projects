import javax.swing.JOptionPane;
import java.lang.Math;
interface Lotterie {
   int getAnzahl();
   int getMaximum();

  public default long binom(long y, long x){
      if(x == 0 || x == y) {
         return 1;}
      else if(x == 1){
         return y;
         }
      else {
         return binom(y-1,x) + binom(y-1,x-1);
         }
      }
   public default long berechneMoeglichkeiten() {
      long anzahl = (long) getAnzahl();
      long maximum = (long) getMaximum();
      long ergebnis;

      if ( maximum == 0){
      return 0L;
      }
      else {
         ergebnis = binom(maximum, anzahl);
             
      } 
      return ergebnis;
   }
}

public class Testat03 implements Lotterie{  

      
   public static void main(String[] args){  
      Lotterie lot6aus49 = 
         new Lotterie() {
            public int getAnzahl() {
               return 6;
            }
            public int getMaximum() {
               return 49;
            }         
         };
      long chancen6aus49 = lot6aus49.berechneMoeglichkeiten();
      System.out.println("Ihre Chancen f�r 6 aus 49\nsind 1 in " + 
         chancen6aus49 + ". Viel Gl�ck!");  

      Lotterie lot = new Lotterie(){
         int anzahl;
         int maximum;
            {
            try{
                   int anzahl = Integer.parseInt(JOptionPane.showInputDialog("Anzahl: "));
                   int maximum = Integer.parseInt(JOptionPane.showInputDialog("Maximum: "));
                }
                catch(NumberFormatException e){
                   JOptionPane.showMessageDialog(null, "Sie haben keine Zahl eingegeben.");
                }
            }
            public int getAnzahl(){
               return anzahl;
            }
            public int getMaximum(){
               return maximum;
            }
         };  
      try {     
         long chancen = lot.berechneMoeglichkeiten();
         JOptionPane.showMessageDialog(null,
            "Ihre Chancen f�r " + lot.getAnzahl() + " aus " + lot.getMaximum() +
            "\nsind 1 in " + chancen + ". Viel Gl�ck!");
         }
      catch(Throwable e) {
         }
   }
}    

