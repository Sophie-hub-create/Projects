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
    Wall1 wall = new Wall1(5.0, 4.0);
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

    
    Circle circle = new Circle(3.75);
    System.out.println("circle.radius= " + circle.getRadius());
    System.out.println("circle.area= " + circle.getArea());
    Cylinder cylinder = new Cylinder(5.55, 7.25);
    System.out.println("cylinder.radius= " + cylinder.getRadius());
    System.out.println("cylinder.height= " + cylinder.getHeight());
    System.out.println("cylinder.area= " + cylinder.getArea());
    System.out.println("cylinder.volume= " + cylinder.getVolume());

    Rectangle rectangle = new Rectangle(5, 10);
    System.out.println("rectangle.width= " + rectangle.getWidth());
    System.out.println("rectangle.length= " + rectangle.getLength());
    System.out.println("rectangle.area= " + rectangle.getArea());
    Cuboid cuboid = new Cuboid(5,10,5);
    System.out.println("cuboid.width= " + cuboid.getWidth());
    System.out.println("cuboid.length= " + cuboid.getLength());
    System.out.println("cuboid.area= " + cuboid.getArea());
    System.out.println("cuboid.height= " + cuboid.getHeight());
    System.out.println("cuboid.volume= " + cuboid.getVolume());

    //Beispiele Kitchen
    KitchenWall wall12 = new KitchenWall(3.0, 4.0, "yellow", false);
    KitchenWall wall22 = new KitchenWall(3.0, 4.0, "white", false);
    KitchenWall wall32 = new KitchenWall(3.0, 2.0, "none", true);
    KitchenWall wall42 = new KitchenWall(3.0, 2.0, "none", true);
    KitchenLamp lamp2= new KitchenLamp(0.5, 1.2, "little standing lamp", true);
    KitchenFloor Kitchenfloor = new KitchenFloor(4.0, 2.0, "PVC", false);
    Kitchen myKitchen = new Kitchen(wall12, wall22, wall32, wall42, Kitchenfloor, lamp2);

    System.out.println(wall12.getWallArea());
    System.out.println(wall22.isWallpaper());
    System.out.println(wall32.getColour());
    System.out.println(wall42.getWallArea());

    System.out.println(Kitchenfloor.getFloorArea());
    System.out.println(Kitchenfloor.getFlooring());
    System.out.println(Kitchenfloor.isOld());

    //KOMPOSITION /COMPOSITION !!!!
    myKitchen.getLamp().turnOff();
    
    //Beispiele BedRoom
    Wall wall1 = new Wall("West");
    Wall wall2 = new Wall("East");
    Wall wall3 = new Wall("South");
    Wall wall4 = new Wall("North");

    Ceiling ceiling = new Ceiling(12, 55);

    Bed bed = new Bed("Modern", 4, 3, 2, 1);

    Lamp lamp = new Lamp("Classic", false, 75);

    Bedroom bedRoom = new Bedroom("Tims", lamp,wall1, wall2, wall3, wall4, ceiling,bed);
    bedRoom.makeBed();

    bedRoom.getLamp().turnOn();

    //Beispiele Printer
    Printer printer = new Printer(50, true);
    System.out.println(printer.addToner(50));
    System.out.println(printer.getPagesPrinted());
    System.out.println(printer.printPages(4));
    System.out.println(printer.printPages(2));
    System.out.println(printer.getPagesPrinted());
    Printer printer2 = new Printer(50, false);
    System.out.println(printer2.addToner(50));
    System.out.println(printer2.getPagesPrinted());
    System.out.println(printer2.printPages(4));
    System.out.println(printer2.printPages(2));
    System.out.println(printer2.getPagesPrinted());

}
}
