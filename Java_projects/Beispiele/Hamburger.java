package Beispiele;

public class Hamburger {
    private String name;
    private String meat;
    private String breadRollType;
    private double price;

    private String addition1Name;
    private String addition2Name;
    private String addition3Name;
    private String addition4Name;
    private double addition1Price;
    private double addition2Price;
    private double addition3Price;
    private double addition4Price;
    private double addOnPrice;

    public Hamburger(){

    }
    public Hamburger(String name, String meat, double price, String breadRollType){
        this.name=name;
        this.meat=meat;
        this.price=price;
        this.breadRollType=breadRollType;
        System.out.println(getClass().getSimpleName() +"Hamburger on a " +breadRollType+" roll with " +meat+", price is "+price);
    }
    public void addHamburgerAddition1(String addition1Name, double addition1Price){
        addOnPrice+=addition1Price;
        System.out.println("Added "+addition1Name+" for an extra "+ addition1Price);
    }
    public void addHamburgerAddition2(String addition2Name, double addition2Price){
        addOnPrice+=addition2Price;
        System.out.println("Added "+addition2Name+" for an extra "+ addition2Price);
    }
    public void addHamburgerAddition3(String addition3Name, double addition3Price){
        addOnPrice+=addition3Price;
        System.out.println("Added "+addition3Name+" for an extra "+ addition3Price);
    }
    public void addHamburgerAddition4(String addition4Name, double addition4Price){
        addOnPrice+=addition4Price;
        System.out.println("Added "+addition4Name+" for an extra "+ addition4Price);
    }
    public double itemizeHamburger(){
        
        double result = this.price+addOnPrice;
        return result;
    }
}
