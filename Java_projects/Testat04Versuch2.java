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
class ToDoEintrag implements Comparable <ToDoEintrag> {

    private String aufgabe;
    private char prio1;
    private int prio2;

    public ToDoEintrag (String aufgabe, char prio1, int prio2){
        this.aufgabe = aufgabe;
        this.prio1 = prio1;
        this.prio2 = prio2;
    }

    public void setPrio1 (char prio1){
        this.prio1 = prio1;
    }
    public char getPrio1(){
        return prio1;
    }

    public void setPrio2 (int prio2){
        this.prio2 = prio2;
    }
    public int getPrio2(){
        return prio2;
    }
    Comparator<ToDoEintrag> prio1Sorter = Comparator.comparing(ToDoEintrag::getPrio1);

    @Override
    public String toString(){
        return Character.toString(prio1) + prio2 + ": " + aufgabe;
    }

    
    @Override
    public int compareTo(ToDoEintrag toDoEintrag) {
        if(this.getPrio1() > toDoEintrag.getPrio1()) {
            return 1;
        } else if (this.getPrio1() < toDoEintrag.getPrio1()) {
            return -1;
        } else {
            return 0;
        }
    }
   
}

public class Testat04Versuch2 {
   public static void main(String[] args) {
      PriorityQueue<ToDoEintrag> toDoListe = new PriorityQueue<ToDoEintrag>();
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