package Banking;
import java.util.ArrayList;

public class Branch {
    
    private String branchName;
    private ArrayList<Customers>customers;

    public Branch(String branchName){
        this.branchName=branchName;
        this.customers = new ArrayList<Customers>();
    }
    public String getName(){
        return this.branchName;
    }
    public ArrayList<Customers> getCustomers(){
        return this.customers;
    }
    public boolean newCustomer(String customerName, double initialTransaction){
        //Returns true if the customer was added successfully or false otherwise.
    }
    public boolean addCustomerTransaction(String customerName, double transaction){
        //Returns true if the customers transaction was added successfully or false otherwise.
    }
    private Customer findCustomer(String customerName){
        //Return the Customer if they exist, null otherwise.
    }


}
