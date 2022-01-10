package Beispiele;

public class SimpleCalculator {
    private double firstNumber;
    private double secondNumber;

    public double getFirstNumber(){
        return firstNumber;
    }

    public double getSecondNumber(){
        return secondNumber;
    }

    public void setFirstNumber(double firstNumber){
        this.firstNumber=firstNumber;
    }

    public void setSecondNumber(double secondNumber){
        this.secondNumber=secondNumber;
    }

    public double getAdditionResult(){
        double result = this.firstNumber+this.secondNumber;
        return result;
    }

    public double getSubtractionResult(){
        double result = this.firstNumber-this.secondNumber;
        return result;
    }

    public double getMultiplicationResult(){
        double result = this.secondNumber*this.firstNumber;
        return result;
    }
    public double getDivisionResult(){
        double result;
        if(secondNumber == 0){
            result = 0;
        }
        else{
            result = this.firstNumber/this.secondNumber;
        }
        return result;
    }


}
