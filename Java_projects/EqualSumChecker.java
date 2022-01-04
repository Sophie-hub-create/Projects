public class EqualSumChecker {

    public static boolean hasEqualSum(int one, int two, int three){
        if((one + two) == three){
            return true;
        }
        else {
            return false;
        }
    }
    public static void main(String args[]){
        System.out.println(hasEqualSum(1,1,1));
        System.out.println(hasEqualSum(1,1,2));
        System.out.println(hasEqualSum(1,-1,0));

    }
    
}
