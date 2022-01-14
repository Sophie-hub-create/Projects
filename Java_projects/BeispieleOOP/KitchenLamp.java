package BeispieleOOP;

public class KitchenLamp {

    private double size;
    private double weight;
    private String typeLamp;
    private boolean powerOn;

    public KitchenLamp(double size, double weight, String typeLamp, boolean powerOn){
        this.setSize(size);
        this.setWeight(weight);
        this.setTypeLamp(typeLamp);
        this.setPowerOn(powerOn);
    }

    public void turnOff(){
        isPowerOn();
        if(powerOn==true)
        {
            System.out.println("Please turn off the light in the kitchen");
        }
        else{
            System.out.println("You already turned off the light");
        }
    }

    public double getSize() {
        return size;
    }
    public boolean isPowerOn() {
        return powerOn;
    }
    public void setPowerOn(boolean powerOn) {
        this.powerOn = powerOn;
    }
    public String getTypeLamp() {
        return typeLamp;
    }
    public void setTypeLamp(String typeLamp) {
        this.typeLamp = typeLamp;
    }
    public double getWeight() {
        return weight;
    }
    public void setWeight(double weight) {
        this.weight = weight;
    }
    public void setSize(double size) {
        this.size = size;
    }

    

    
}
