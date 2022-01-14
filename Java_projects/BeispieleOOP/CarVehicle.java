package BeispieleOOP;

public class CarVehicle extends Vehicle {

    private int wheels;
    private int doors;
    private int gears;
    private boolean isManual;

    private int currentGear;

    public CarVehicle(String name, String size, int wheels, int doors, int gears, boolean isManual){
        super(name, size);
        this.wheels = wheels;
        this.doors = doors;
        this.gears = gears;
        this.isManual = isManual;
        this.currentGear = currentGear;    
    }

    public void changeCurrentGear(int currentGear){
        this.currentGear = currentGear;
    }

    public void changeVelocity(int speed, int direction){
        move(speed, direction);
    }
   
}
