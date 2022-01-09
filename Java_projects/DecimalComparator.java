public class DecimalComparator {
    public static boolean areEqualByThreeDecimalPlaces(double zahl1, double zahl2){
        double zahl1Mult = zahl1*1000;
        double zahl2Mult = zahl2*1000;
        int zahl1Int = (int) zahl1Mult;
        int zahl2Int = (int) zahl2Mult;
        if(zahl1Int==zahl2Int){
            return true;
        }
        else{
            return false;
        }
    }
    public static void main(String args[]){
        System.out.println(areEqualByThreeDecimalPlaces(-3.1756, -3.1756));
        System.out.println(areEqualByThreeDecimalPlaces(3.176, 3.175));
        System.out.println(areEqualByThreeDecimalPlaces(3.0, 3.0));
        System.out.println(areEqualByThreeDecimalPlaces(-3.123, 3.123));
    }
    
}
