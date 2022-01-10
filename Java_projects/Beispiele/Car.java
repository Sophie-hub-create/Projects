package Beispiele;

public class Car {

    private int wheels;
    private int doors;
    private String  model;
    private String engine;
    private String colour;

    public void setColour(String colour){
        String validColour = colour.toLowerCase();
        if (validColour.equals("blue") || validColour.equals("black")){
            this.colour = colour;
        }
        else{
            this.colour = "Unknown";
        }
    }
    
        public String getColour(){
            return this.colour;
        }
    
    public void setModel(String model){
        this.model = model;
    }
    public String getModel(){
        return this.model;
    }
}

