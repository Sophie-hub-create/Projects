package BeispieleOOP;

public class Kitchen {

    private KitchenWall wall1;
    private KitchenWall wall2;
    private KitchenWall wall3;
    private KitchenWall wall4;
    private KitchenFloor floor;
    private KitchenLamp lamp;

    public Kitchen(KitchenWall wall1, KitchenWall wall2,KitchenWall wall3,KitchenWall wall4,KitchenFloor floor,KitchenLamp lamp){
        this.wall1=wall1;
        this.wall2=wall2;
        this.wall3=wall3;
        this.wall4 = wall4;
        this.floor=floor;
        this.lamp=lamp;
    }
    public KitchenLamp getLamp(){
        return this.lamp;
    }
    public boolean PowerOn() {
        boolean result = lamp.isPowerOn();
        return result;
    }

    public void turnOff(){
        boolean result =PowerOn();
        if(result == true)
        {
            System.out.println("Please turn off the light in the kitchen");
        }
        else{
            System.out.println("You already turned off the light");
        }
    }
   
 
}
