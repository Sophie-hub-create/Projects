package BeispieleOOP;
public class BankAccount {
    private int accountNumber;
    private int balance;
    private String customerName;
    private String email;
    private String phoneNumber;

    public BankAccount(){
        
    }

    public BankAccount(int accountNumber, int balance, String customerName, 
                        String email, String phoneNumber){
        this.accountNumber=accountNumber;
        this.balance=balance;
        this.customerName= customerName;
        this.email=email;
        this.phoneNumber=phoneNumber;
        
    }

    public void setAccountNumber(int accountNumber){
        this.accountNumber = accountNumber;
    }
    
    public int getAccountNumber(){
        return this.accountNumber;
    }

    public void setBalance(int balance){
        this.balance = balance;
    }

    public int getBalance(){
        return this.balance;
    }

    public void setCustomerName(String customerName){
        this.customerName = customerName;
    }

    public String getCustomerName(){
        return this.customerName;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public String getEmail(){
        return this.email;
    }

    public void setPhoneNumber(String phoneNumber){
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber(){
        return this.phoneNumber;
    }

    public String FullCustomer(){
        return this.customerName+" "+this.email;
    }
    
    public String contactDates(){
        return this.email+" "+this.phoneNumber;
    }

    public int depositFund(int deposit){
        return this.balance += deposit;
    }

    public int withdrawFund(int deposit){
        if((this.balance - deposit) > 0){
            return this.balance -= deposit;
        }
        else{
            return this.balance;
        }
    }


}
