package Beispiele;

public class HealthyBurger extends Hamburger{
   private double result=0;

    public HealthyBurger(){
    }

    public HealthyBurger(String meat, double price){
        result += price;
        System.out.println("Healthy hamburger on a Brown rye roll with "+meat+", price is "+price); 
    }
    public void addHealthyBurgerAddition1(String healthyExtra1Name, double healthyExtra1Price ){
        result +=healthyExtra1Price;
        System.out.println("Added "+healthyExtra1Name+" for an extra "+healthyExtra1Price);
    }
    public void addHealthyBurgerAddition2(String healthyExtra2Name, double healthyExtra2Price ){
        result += healthyExtra2Price;
        System.out.println("Added "+healthyExtra2Name+" for an extra "+healthyExtra2Price);
    }
    @Override
    public double itemizeHamburger(){
        return result;
    }
    




}
