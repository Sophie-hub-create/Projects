package Beispiele;

public class KitchenFloor {

    private double height;
    private double width;
    private String flooring;
    private boolean isOld;
  
    public KitchenFloor( double height, double width, String flooring, boolean isOld){
        this.height=height;
        this.width=width;
        this.flooring=flooring;
        this.isOld=isOld;
    }

    public double getFloorArea(){
        getHeight();
        getWidth();
        return height*width;
    }

    public double getHeight() {
        return height;
    }
    public void setHeight(double height) {
        this.height = height;
    }
    public double getWidth() {
        return width;
    }
    public void setWidth(double width) {
        this.width = width;
    }
    public String getFlooring() {
        return flooring;
    }
    public void setFlooring(String flooring) {
        this.flooring = flooring;
    }
    public void setOld(boolean isOld) {
        this.isOld = isOld;
    }
    public boolean isOld() {
        return isOld;
    }

    
}
