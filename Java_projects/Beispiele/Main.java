package Beispiele;

public class Main {
    public static void main(String[] args)  {

        //Beispiele Class Car
       Car volvo = new Car();
       Car ford = new Car();
       volvo.setModel("XC90");
       System.out.println("Model is: "+ volvo.getModel());
       volvo.setColour("black");
        ford.setModel("Fusion");
        ford.setColour("green");
        System.out.println(ford.getModel());
        System.out.println(ford.getColour());

        //Beispiele Class SimpleCalculator

    SimpleCalculator calculator = new SimpleCalculator();
    calculator.setFirstNumber(5.0);
    calculator.setSecondNumber(4);
    System.out.println(calculator.getAdditionResult());
    System.out.println(calculator.getSubtractionResult());
    calculator.setFirstNumber(5.25);
    calculator.setSecondNumber(0);
    System.out.println(calculator.getMultiplicationResult());
    System.out.println(calculator.getDivisionResult());

    //Beispiele Class Person
    Person person = new Person();
    person.setFirstName("");
    person.setLastName("");
    person.setAge(10);
    System.out.println(person.getFullName());
    System.out.println(person.isTeen());
    person.setFirstName("John");
    person.setAge(18);
    System.out.println(person.getFullName());
    System.out.println(person.isTeen());
    person.setLastName("Smith");
    System.out.println(person.getFullName());

    //Beispiele Class BankAccount
    BankAccount one = new BankAccount();
    one.setAccountNumber(123456);
    one.setBalance(5000);
    one.setCustomerName("Max Mustermann");
    one.setEmail("m.mustermann@Beispiel.de");
    one.setPhoneNumber("0349834098234");
    System.out.println(one.FullCustomer());
    System.out.println(one.contactDates());
    System.out.println(one.getAccountNumber());
    System.out.println(one.depositFund(500));
    System.out.println(one.withdrawFund(1000));

}
}
