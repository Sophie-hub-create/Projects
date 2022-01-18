package Banking;

import java.util.ArrayList;

public class Customer {
    private String customerName;
    private ArrayList<Transactions> transactions;

    public Customer(String customerName){
        this.customerName = customerName;
        this.transactions = new ArrayList<Transactions>();
    }
    public String getCustomerName(){
        return this.customerName;
    }
    public ArrayList<Transactions> getTransactions(){
        return this.transactions;
    }
    public void addTransaction(double transaction){

    }
}
