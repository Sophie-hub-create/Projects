package BeispieleOOP;

public class KitchenWall {

    private double height;
    private double width;
    private String colour;
    private boolean wallpaper;

    public KitchenWall(double height, double width, String colour, boolean Wallpaper){
        this.setHeight(height);
        this.setWidth(width);
        this.setColour(colour);
        this.setWallpaper(Wallpaper);
        
    }

    public double getWallArea(){
        getHeight();
        getWidth();
        return height*width;
    }

    public boolean isWallpaper() {
        return wallpaper;
    }

    public void setWallpaper(boolean wallpaper) {
        this.wallpaper = wallpaper;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    
    
}
