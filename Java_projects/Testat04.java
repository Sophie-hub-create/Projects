import java.util.*;
/*
Erstellen Sie eine Klasse ToDoEintrag, die Aufgaben
mit zwei Prioritätsangaben verwaltet.
Die primäre Prioritätsangabe ist ein Buchstabe (A-Z) und
die sekundäre Prioritätsangabe ist eine Zahl (1-99).
Die Prioritätsangaben sollen auf diese Wertebereiche beschränkt 
sein. "Ausreisser" sind daher "einzufangen".
Hinsichtlich Priorität soll die Buchstabenangabe Vorrang vor der 
Zahlenangabe haben. Ansonsten gilt jeweils die natürliche Ordnung.
Das unten stehende Testprogramm soll daher ausgeben:
A02: Hund fuettern
A12: Blumen giessen
A65: Essen kochen
A99: Mutter anrufen
B07: Vogel fuettern
B14: Auto waschen
C03: Rasen maehen
C04: Muell rausbringen
*/
class ToDoEintrag{
    private String aufgabe;
    private char prio1;
    private int prio2;

    public ToDoEintrag (String aufgabe, char prio1, int prio2){
        this.aufgabe = aufgabe;
        this.prio1 = prio1;
        this.prio2 = prio2;
    }
    // Rückgabe Buchstaben prio1 falls Character in a-z oder A-Z

    public String getBuchstabe() throws FalschAngegebenerBuchstabeException {
        String prio1String;
        prio1String =  Character.toString(prio1);
        if( (prio1 >= 'a' && prio1 <= 'z') || (prio1 >= 'A' && prio1 <= 'Z')){
            return prio1String;
        }
        else{
            throw new FalschAngegebenerBuchstabeException();
            
        }      
        
    }
}
//

class Prio1Comparator implements Comparator <ToDoEintrag> {

    @Override
    public int compare (ToDoEintrag erster, ToDoEintrag zweiter) {
        
        try {
        return erster.getBuchstabe().compareTo(zweiter.getBuchstabe());
      } 
      catch (FalschAngegebenerBuchstabeException e) {

        }
        return 0; 
    }
   
}

class FalschAngegebenerBuchstabeException extends Exception {

    public FalschAngegebenerBuchstabeException() {
        super();
    }
} 

public class Testat04 {
    public static void main(String[] args) {
        Queue<ToDoEintrag> toDoListe = new PriorityQueue <ToDoEintrag>();
        toDoListe.add(new ToDoEintrag("Muell rausbringen", 'C', 4));
        toDoListe.add(new ToDoEintrag("Hund fuettern", 'A', 2));
        toDoListe.add(new ToDoEintrag("Vogel fuettern", 'B', 7));
        toDoListe.add(new ToDoEintrag("Rasen maehen", 'C', 3));
        toDoListe.add(new ToDoEintrag("Essen kochen", '4', 'A'));
        toDoListe.add(new ToDoEintrag("Mutter anrufen", '#', 123));      
        toDoListe.add(new ToDoEintrag("Blumen giessen", 'A', 12));
        toDoListe.add(new ToDoEintrag("Auto waschen", 'B', 14));
        while(!toDoListe.isEmpty())
            System.out.println(toDoListe.remove());
    }
}