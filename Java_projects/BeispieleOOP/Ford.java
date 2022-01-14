package BeispieleOOP;

public class Ford extends Car{

    public Ford(int cylinders, String name) {
        super(cylinders, name);
    }

    @Override
    public void startEngine(){
        System.out.println(getClass().getSimpleName()+" engine is started");
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
