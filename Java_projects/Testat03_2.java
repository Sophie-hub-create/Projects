class FachNote {
    private String fach;
    private int note;

    public FachNote(String fach, int note) {
        this.fach = fach;
        this.note = note;

    }

    public int getNote() {
        return note;
    }

    public String getFach() {
        return fach;
    }

}

class Schueler {
    private String nameSchueler;
    private FachNote[] noten;

    public Schueler(String string, FachNote fachNote, FachNote fachNote2) {
        this.nameSchueler = nameSchueler;
        this.noten = new FachNote[2];
        noten[0] = fachNote;
        noten [1] = fachNote2;    
    }

    public Schueler(String string, FachNote fachNote, FachNote fachNote2, FachNote fachNote3) {
        this.nameSchueler = nameSchueler;
        this.noten = new FachNote[3];
        noten[0] = fachNote;
        noten [1] = fachNote2;    
        noten [2] = fachNote3;
    }
    public double getNote(String fach) throws NichtBelegtesFachException {
        for (FachNote x : noten) {
            if (fach.equals(x.getFach())) {
                return x.getNote();
            }
        }
        throw new NichtBelegtesFachException(); 
    }
}

class NichtBelegtesFachException extends Exception {

    public NichtBelegtesFachException() {
        super();
    }
}

public class Testat03_2 {
    public static void main(String[] args) {
        Schueler[] schueler = { new Schueler("Karl", new FachNote("Deutsch", 3), new FachNote("Mathe", 2)),
                new Schueler("Ernst", new FachNote("Deutsch", 1), new FachNote("Mathe", 4)),
                new Schueler("Wilhelm", new FachNote("Deutsch", 1), new FachNote("Mathe", 1),
                        new FachNote("Erdkunde", 3)),
                new Schueler("Angela", new FachNote("Deutsch", 4), new FachNote("Mathe", 3)),
                new Schueler("Konrad", new FachNote("Deutsch", 2), new FachNote("Mathe", 5),
                        new FachNote("Erdkunde", 1)),
                new Schueler("Otto", new FachNote("Deutsch", 2), new FachNote("Mathe", 1)),
                new Schueler("Norbert", new FachNote("Deutsch", 3), new FachNote("Mathe", 4)) };
        for (String fach : new String[] { "Deutsch", "Erdkunde", "Sport", "Mathe" }) {
            double durchschnitt = 0.0;
            int anzahl = 0;
            for (Schueler x : schueler)
                try {

                    durchschnitt += x.getNote(fach); 
                    anzahl++;
                   
                }

                catch (NichtBelegtesFachException e) {
                }
            if (anzahl > 0)
                System.out.printf("%nDurchschnittsnote im Fach %s ist %.1f", fach, durchschnitt / anzahl);
            else
                System.out.printf("%nDurchschnittsnote im Fach %s ist unbestimmt", fach);
        }

    }
}
