public class TeenNumberChecker {

    public static boolean hasTeen(int one, int two, int three){
        boolean result;
        if(one >=13 & one <= 19| two>=13 & two <=19 | three>=13  & three <=19){
            result = true;
        }
        else{
            result = false;
        }
        return result;
    }

    public static boolean isTeen(int age){
        if (age >=13 && age <= 19){
            return true;
        }
        else{
            return false;
        }
    }
    public static void main (String args []){
        System.out.println(hasTeen(9,99,19));
        System.out.println(hasTeen(0,0,20));
        System.out.println(hasTeen(23,15,42));
        System.out.println(hasTeen(22,23,34));
        System.out.println(isTeen(9));
        System.out.println(isTeen(13));
    }
    
}
