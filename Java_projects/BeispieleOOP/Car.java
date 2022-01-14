package BeispieleOOP;

public class Car {
    private boolean engine;
    private int cylinders;
    private String name;
    private int wheels;

    public Car(int cylinders, String name){
        this.cylinders=cylinders;
        this.name=name;
        this.engine=true;
        this.wheels=4;
    }

    public void startEngine(){
        System.out.println(name+"'s engine ist started");
    }
    public void accelerate(){
        System.out.println(name+" is accelerating");
    }
    public void brake(){
        System.out.println(name+" is braking");
    }
    public int getCylinders(){
        return this.cylinders;
    }
    public String getName(){
        return this.name;
    }
}
