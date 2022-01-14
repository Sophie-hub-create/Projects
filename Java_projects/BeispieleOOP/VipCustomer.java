package BeispieleOOP;

public class VipCustomer {
    private String name;
    private double creditLimit;
    private String eMailAddress;


    public VipCustomer(){
        this("default name", 100.00, "default Email");
    }

    public VipCustomer(String name, double creditLimit, String eMailAddress) {
        this.name=name;
        this.creditLimit= creditLimit;
        this.eMailAddress=eMailAddress;
    }

    public VipCustomer(double creditLimit, String eMailAddress){
        this("default name", creditLimit, eMailAddress);
    }

    public String getName(){
        return this.name;
    }

    public double getCreditLimit(){
        return creditLimit;
    }

    public String getEmailAddress(){
        return eMailAddress;
    }

}
