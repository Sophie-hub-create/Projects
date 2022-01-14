package MobilePhone;
import java.util.ArrayList;

public class MobilePhone {

    private String myNumber;
    ArrayList <Contact> myContacts = new ArrayList<Contact>();

    public MobilePhone(String myNumber, ArrayList<Contact> myContacts){
        this.myNumber=myNumber;
        this.myContacts=myContacts;
    }

    public boolean addNewContact(Contact toAdd){
        boolean toAddNotInThere;
        if(myContacts.contains(toAdd){
            toAddNotInThere=false;
        }
        else{
            toAddNotInThere=true;
        }
        return toAddNotInThere;
    }
    public boolean updateContact(Contact old, Contact newer){
        boolean isReadyToUpdate;
        if(myContacts.contains(old)){
            int a = myContacts.indexOf(old);
            myContacts.remove(old);
            myContacts.add(a, newer);
            isReadyToUpdate=true;
        }
        else{
            isReadyToUpdate=false;
        }
        return isReadyToUpdate;

    }
    public boolean removeContact(Contact toRemove){
        boolean isRemoved;
        if(myContacts.contains(toRemove)){
            myContacts.remove(toRemove);
            isRemoved=true;
        }
        else{
            isRemoved=false;
        }
        return isRemoved;        
    }
    public int findContact(Contact toFind){
        int indexToFind = myContacts.indexOf(toFind);
        return indexToFind;
    }
    public int findContact(String toFind){
        //iterieren über ArrayList
        return position;
    }
    public Contact queryContact(String toQuery){
        //ebenso durchiterieren
        return myContacts[position];
    }
    
}
