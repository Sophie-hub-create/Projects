import java.lang.Math;

interface EbeneFigur {
    double getUmfang();
    double getFlaeche();       
 }

class Dreieck implements EbeneFigur{
   private double seite1;
   private double seite2;
   private double winkel;
  

   public Dreieck (double seite1, double seite2, double winkel){
   this.seite1 = seite1;
   this.seite2 = seite2;
   this.winkel = winkel;
   }

   public double getFlaeche(){
     double hoehe = seite2* (winkel/180)* Math.PI; 
     return (seite1*hoehe)/2;
   }

   public double getUmfang(){
      return Math.sqrt(seite1*seite1+seite2*seite2-(2*seite1*seite2*Math.cos(winkel/180)));

   }

   public String toString(){
      return "Typ: Dreieck "+ "Seite1: "+ seite1 +" Seite2: "+ seite2 +" Winkel: "+ winkel;
   }
}


class Ellipse implements EbeneFigur {
   private double seite1;
   private double seite2;

   public Ellipse (double seite1, double seite2){
      this.seite1 = seite1;
      this.seite2 = seite2;
   }
   public double getFlaeche(){
      return Math.PI * seite1 *seite2;
   }
   public double getUmfang(){
      return Math.PI* (Math.sqrt(2*(seite1*seite1)+(seite2*seite2)));
   }

   public String toString(){
      return "Typ: Ellipse "+ "Seite1: "+ seite1 +" Seite2: "+ seite2 ;
   }
}

 class Kreis implements EbeneFigur{
   private double seite1;
   private double seite2;
   
   public Kreis (double seite1, double seite2){
      this.seite1 = seite1;
      this.seite2= seite2;
   }
   public double getFlaeche(){
      return (Math.PI*((seite1+seite2)/2))*(((seite1+seite2)/2));
    }

    public double getUmfang(){
      return 2*Math.PI*((seite1+seite2)/2);
    }
    public String toString(){
      return "Typ: Kreis "+ "Seite1: "+ seite1 +" Seite2: "+ seite2 ;
   }
 }

 class Parallelogramm implements EbeneFigur {
   private double seite1;
   private double seite2;
   private double winkel;
   private String name;
   
   public Parallelogramm(double seite1, double seite2, double winkel, String name) {
      this.seite1 = seite1;
      this.seite2 = seite2;
      this.winkel = winkel;
      this.name = name;
   }
  
   public double getFlaeche() {
      return this.seite1*this.seite2*Math.sin((this.winkel*Math.PI/180));
   }
   public double getUmfang() {
      return 2*this.seite1 + 2*this.seite2;
   }

   public String toString(){
      return "Typ: "+name+ " Seite1: "+ seite1 +" Seite2: "+ seite2 +" Winkel: "+ winkel;
   }
 

}

class Quadrat extends Parallelogramm{
   
     public Quadrat(double seite1) {
         super(seite1, seite1, 90, "Quadrat");
     }
   }

  
class Rechteck extends Parallelogramm {
    
      public Rechteck(double seite1, double seite2, double winkel) {
         super(seite1, seite2, winkel, "Rechteck");
      }
   }
   
class Raute extends Parallelogramm {

      public Raute (double seite1, double winkel){
         super (seite1, seite1, winkel, "Raute");
      }
}
 
public class Testat02{
    public static void main(String... args) {
       for (int i=0; i < 10; i++) {
          double seite1 = Math.random()*100.0 - 10.0;
          double seite2 = Math.random()*100.0 - 10.0; 
          double winkel = Math.random()*190.0 - 10.0; 
          String name = "Parallelogramm";
          try {
             EbeneFigur p = new Parallelogramm(seite1,seite2,winkel,name);
             System.out.println(p);
             System.out.println(String.format("Flaeche: %.2f",p.getFlaeche()));   
             System.out.println(String.format("Umfang: %.2f",p.getUmfang()));
             System.out.println();
             Quadrat q = new Quadrat(seite1);
             System.out.println(q);
             System.out.println(String.format("Flaeche: %.2f",q.getFlaeche())); 
             System.out.println(String.format("Umfang: %.2f",q.getUmfang()));
             System.out.println();  
            Rechteck r = new Rechteck(seite1,seite2, winkel);
            System.out.println(r);
            System.out.println(String.format("Flaeche: %.2f",r.getFlaeche())); 
            System.out.println(String.format("Umfang: %.2f",r.getUmfang()));
            System.out.println();
            Raute s = new Raute(seite1, winkel);
            System.out.println(s);
            System.out.println(String.format("Flaeche: %.2f",s.getFlaeche())); 
            System.out.println(String.format("Umfang: %.2f",s.getUmfang()));
            System.out.println();  
            EbeneFigur t = new Kreis(seite1,seite2);            
             System.out.println(t);
             System.out.println(String.format("Flaeche: %.2f",t.getFlaeche()));   
             System.out.println(String.format("Umfang: %.2f",t.getUmfang()));
             System.out.println();
             EbeneFigur u = new Ellipse(seite1,seite2);            
             System.out.println(u);
             System.out.println(String.format("Flaeche: %.2f",u.getFlaeche()));   
             System.out.println(String.format("Umfang: %.2f",u.getUmfang()));
             System.out.println();
             EbeneFigur v = new Dreieck(seite1,seite2, winkel);            
             System.out.println(v);
             System.out.println(String.format("Flaeche: %.2f",v.getFlaeche()));   
             System.out.println(String.format("Umfang: %.2f",v.getUmfang()));
             System.out.println();
            }
          catch(IllegalArgumentException e) {
             System.out.println("Mindestens einer der folgenden Parameter ist unzulaessig:");
             System.out.println(String.format("Seite1: %.2f Seite2: %.2f Winkel: %.2f",seite1,seite2,winkel));
          }  
          System.out.println();  
      }

 }
 
}
