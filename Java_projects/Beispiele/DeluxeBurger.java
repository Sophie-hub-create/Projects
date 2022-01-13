package Beispiele;

public class DeluxeBurger extends Hamburger{

    public DeluxeBurger() {
        System.out.println("Deluxe hamburger on a White roll with Sausage & Bacon, price is 14.54");
        System.out.println("Added Chips for an extra 2.75");
        System.out.println("Added Drink for an extra 1.81");
    }
    
    @Override
    public void addHamburgerAddition1(String addition1Name, double addition1Price){
        System.out.println("Cannot not add additional items to a deluxe burger");
    }
    @Override
    public void addHamburgerAddition2(String addition1Name, double addition1Price){
        System.out.println("Cannot not add additional items to a deluxe burger");
    }
    @Override
    public void addHamburgerAddition3(String addition1Name, double addition1Price){
        System.out.println("Cannot not add additional items to a deluxe burger");
    }
    @Override
    public void addHamburgerAddition4(String addition1Name, double addition1Price){
        System.out.println("Cannot not add additional items to a deluxe burger");
    }
    @Override
    public double itemizeHamburger(){
        double result = 19.10;
        return result;
    }
    
    
}

