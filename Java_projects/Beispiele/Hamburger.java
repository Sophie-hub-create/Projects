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


    public Hamburger(String name, String meat, double price, String breadRollType){
        this.name=name;
        this.meat=meat;
        this.price=price;
        this.breadRollType=breadRollType;
    }
    public void addHamburgerAddition1(){
        System.out.println("Added "+addition1Name+"for an extra "+ addition1Price);
    }
    public void addHamburgerAddition2(){
        System.out.println("Added "+addition2Name+"for an extra "+ addition2Price);
    }
    public void addHamburgerAddition3(){
        System.out.println("Added "+addition3Name+"for an extra "+ addition3Price);
    }
    public void addHamburgerAddition4(){
        System.out.println("Added "+addition4Name+"for an extra "+ addition4Price);
    }
    public double itemizehamburger(String addition, double price){
        double result = this.price+=price;
        return result;
    }
}
