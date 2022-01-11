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
    System.out.println("add= " + calculator.getAdditionResult());
    System.out.println("subtract= " + calculator.getSubtractionResult());
    calculator.setFirstNumber(5.25);
    calculator.setSecondNumber(0);
    System.out.println("multiply= " + calculator.getMultiplicationResult());
    System.out.println("divide= " + calculator.getDivisionResult());

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
    BankAccount two = new BankAccount(123, 4000, "Barbara Rhababer", "barbi@Beilspiel.com", "03487234");
    System.out.println(two.FullCustomer());
    System.out.println(two.contactDates());
    System.out.println(two.getAccountNumber());
    System.out.println(two.depositFund(500));
    System.out.println(two.withdrawFund(1000));

    //Beispiele VipAccount
    VipCustomer Rachel = new VipCustomer();
    VipCustomer Max = new VipCustomer("Max", 200.00, "M.Mustermann@Beispiel.de");
    VipCustomer Moritz = new VipCustomer(100.00, "Moritz@Beispiel.de");
    System.out.println(Rachel.getCreditLimit());
    System.out.println(Rachel.getEmailAddress());
    System.out.println(Max.getCreditLimit());
    System.out.println(Moritz.getCreditLimit());

    //Beispiele Wall
    Wall wall = new Wall(5.0, 4.0);
    System.out.println(wall.getArea());
    wall.setHeight(-1.5);
    System.out.println(wall.getWidth());
    System.out.println(wall.getHeight());
    System.out.println(wall.getArea());

    //Beispiele Point
    Point first = new Point(6, 5);
    Point second = new Point(3, 1);
    System.out.println("distance(0,0)= " + first.distance());
    System.out.println("distance(second)= " + first.distance(second));
    System.out.println("distance(2,2)= " + first.distance(2, 2));
    Point point = new Point();
    System.out.println("distance()= " + point.distance());
    

    //Beispiele Carpet, Floor, Calculator
    Carpet carpet = new Carpet(3.5);
    Floor floor = new Floor(2.75, 4.0);
    Calculator calculator2 = new Calculator(floor, carpet);
    System.out.println("total= " + calculator2.getTotalCost());
    carpet = new Carpet(1.5);
    floor = new Floor(5.4, 4.5);
    calculator2 = new Calculator(floor, carpet);
    System.out.println("total= " + calculator2.getTotalCost());
    




}
}
