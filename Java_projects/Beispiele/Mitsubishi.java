package Beispiele;

public class Mitsubishi extends Car {

    public Mitsubishi(int cylinders, String name) {
        super(cylinders, name);
    }
    @Override
    public void startEngine(){
        System.out.println(getClass().getSimpleName()+"'s engine ist started");
    }
    @Override
    public void accelerate(){
        System.out.println(getClass().getSimpleName()+" is accelerating");
    }
    @Override
    public void brake(){
        System.out.println(getClass().getSimpleName()+" is braking");
    }
    
}
