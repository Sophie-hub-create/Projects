package Banking;
import java.util.ArrayList;

public class Bank {
    private String bankName;
    private ArrayList<Branch> branches;

    public Bank(String bankName){
        this.bankName = bankName;
        this.branches = new ArrayList<Branch>();
    }
    public boolean addBranch(String bankName){
        //It returns true if the branch was added successfully or false otherwise.
        if()
    }

    public boolean addCustomer(String branchName, String customerName, double initialTransaction){
        //It returns true if the customer was added successfully or false otherwise
    }
    public boolean addCustomerTransaction(String branchName, String customerName, double initialTransaction){
        //It returns true if the customers transaction was added successfully or false otherwise.
    }
    private Branch findBranch(String branchName){
        //Return the Branch if it exists or null otherwise
    }
    public boolean listCustomers(String branchName boolean printTransactions){
        //Return true if the branch exists or false otherwise. This method prints out a list of customers.
    }

}
