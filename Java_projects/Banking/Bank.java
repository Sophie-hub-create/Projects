package Banking;
import java.util.ArrayList;

public class Bank {
    private String bankName;
    private ArrayList<Branch> branches;

    public Bank(String bankName){
        this.bankName = bankName;
        this.branches = new ArrayList<Branch>();
    }
    public boolean addBranch(String branchName){
        //It returns true if the branch was added successfully or false otherwise.
        if(findBranch(bankName).equals(null)){
            branches.add(new Branch(branchName));
            return true;
        }
        else{
            return false;
        }
    }

    public boolean addCustomer(String branchName, String customerName, double initialTransaction){
        //It returns true if the customer was added successfully or false otherwise
        Branch branch = findBranch(branchName);
        if(branch != null){
            boolean result =branches.newCustomer(customerName, initialTransaction);
            return true;
        }
        else{
            return false;
        }
    }
    public boolean addCustomerTransaction(String branchName, String customerName, double initialTransaction){
        //It returns true if the customers transaction was added successfully or false otherwise.
    }
    private Branch findBranch(String branchName){
        //Return the Branch if it exists or null otherwise
        Branch branch;
        for(int i=0; i<this.Branch.size(); i++) {
            branch = this.Branch.get(i);
            if(branch.getName().equals(branchName)) {
                return branch;
            }
        }
        return null;
    
    }
    public boolean listCustomers(String branchName boolean printTransactions){
        //Return true if the branch exists or false otherwise. This method prints out a list of customers.
    }

}
