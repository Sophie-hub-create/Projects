package MobilePhone;
import java.util.ArrayList;

public class MobilePhone {

    private String myNumber;
    private ArrayList <Contact> myContacts;

    public MobilePhone(String myNumber){
        this.myNumber=myNumber;
        this.myContacts= new ArrayList<Contact>();
    }

    public boolean addNewContact(Contact toAdd){
        boolean toAddNotInThere;
        if(myContacts.contains(toAdd)){
            toAddNotInThere=false;
        }
        else{
            toAddNotInThere=true;
            myContacts.add(toAdd);
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
    private int findContact(Contact toFind){
        int indexToFind = myContacts.indexOf(toFind);
        return indexToFind;
    }
    private int findContact(String contactName) {
        for(int i=0; i<this.myContacts.size(); i++) {
            Contact contact = this.myContacts.get(i);
            if(contact.getName().equals(contactName)) {
                return i;
            }
        }
        return -1;
    }

    public Contact queryContact(String toQuery){
        int position = findContact(toQuery);
        if(position >=0){
            myContacts.get(position);
        }
        return null;
    }

    public void printContacts(){
        System.out.println("Contact List");
        for(int i=0; i<this.myContacts.size(); i++){
            String name = myContacts.get(i).getName();
            String number = myContacts.get(i).getPhoneNumber();
            System.out.println(name+" --> "+number);
        }
    }
    
}
