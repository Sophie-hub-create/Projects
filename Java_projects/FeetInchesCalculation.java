public class FeetInchesCalculation {
    
    public static double calcFettAndInchesToCentimeters(double feet,double inches){
        double resultFeet;
        double resultInches;
        if (feet <0 | inches < 0 |inches <=12){
            System.out.println("Invalid value.");
            return -1;
        }
        else {
            resultFeet = feet*12;
            resultInches = inches*2.54+resultFeet;
            System.out.println(feet+" feet + "+inches+" inches are: "+ resultInches+ " centimeters.");
            return resultInches;
        }
    }

    public static double newCalculation(double inches){
        double feetInInches;
        double result;
        if(inches <0){
            return -1;
        }
        else {
            feetInInches = inches/12;
            result = calcFettAndInchesToCentimeters(feetInInches, inches);
            System.out.println("You need "+inches+" inches and " +feetInInches+ " feet to get "+ result+" centimeters");
            return result;
        }

    }


    public static void main(String args[]){
        calcFettAndInchesToCentimeters(2, 24);
        newCalculation(24);
    }
}
