package BeispieleOOP;

public class Point {
    private int x;
    private int y;

    public Point(){
    }

    public Point(int x, int y){
        this.x = x;
        this.y = y;
    }

    public int getX(){
        return this.x;
    }

    public int getY(){
        return this.y;
    }

    public void setX(int x){
        this.x = x;
    }

    public void setY(int y){
        this.y = y;
    }

    public double distance(){
        double result;
        result = Math.sqrt((this.x-0)*(this.x-0)+(this.y-0)*(this.y-0));
        return result;
    }

    public double distance(int x1, int y1){
        double result;
        result = Math.sqrt((this.x-x1)*(this.x-x1)+(this.y-y1)*(this.y-y1));
        return result;
    }

    public double distance(Point x){
        double result;
        result = Math.sqrt((this.x-x.x)*(this.x-x.x)+(this.y-x.y)*(this.y-x.y));
        return result;
    }    

}
