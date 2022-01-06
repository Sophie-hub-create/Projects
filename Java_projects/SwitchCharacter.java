public class SwitchCharacter {
    
    public static void switchCharacter(char x){
        switch(x){
            case 'a':
                System.out.println("Character was a");
                break;
            case 'b':
                System.out.println("Character was b");
                break;
            case 'c':
                System.out.println("Character was c");
                break;
            case 'd':
                System.out.println("Character was d");
                break;
            case 'e':
                System.out.println("Character was e");
                break;
            default:
                System.out.println("Character wasnt found.");
                break;
        }
        
    }
    public static void main(String arg[]){

        switchCharacter('a');
    }
}
