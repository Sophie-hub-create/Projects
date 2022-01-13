package Beispiele;

public class Ceiling {
    private int height;
    private int paintedColour;

    public Ceiling(int height, int paintedColour){
        this.height=height;
        this.paintedColour=paintedColour;
    }
    public int getHeight(){
        return this.height;
    }
    public int getPaintedColour(){
        return this.paintedColour;
    }
}
