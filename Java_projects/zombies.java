public class zombies {
    

        public static String zombieShootout(int zombies, int range, int ammo) {
          int counter_zombieshot = 0;
          int ammo_count = ammo;
          double range_count = range;
          String result = "";
          for (int i = 0; i <= ammo; i++){
            if (counter_zombieshot == zombies & ammo_count > 0 & range_count > 0){
              result ="You shot all "+ zombies + " zombies.";
            }
            if (range_count == 0.0 & counter_zombieshot < zombies & ammo_count >0){
              result = "You shot "+ counter_zombieshot + " before being eaten: overwhelmed";
            }
            if (ammo_count == 0.0 & counter_zombieshot < zombies){
              result ="You shot "+counter_zombieshot+ " befor being eaten: ran out of ammo.";        
            }
            range_count -= 0.5;
            ammo_count -= 1;
            counter_zombieshot += 1;
           }
          return result;
          
        }

    public static void main(String[] args){
        System.out.println(zombieShootout(150, 100, 200));
    }
}

