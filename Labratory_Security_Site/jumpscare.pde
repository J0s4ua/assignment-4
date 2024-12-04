class Jumpscare{

  PImage[] jumpscare1 = new PImage[35]; //sets the size of each png in the jumpscare
  int i = 1; //for the "loop"



  public void anomaly84_jumpscare(){
    
    static_blink = true;
    type = 1; //sets the screen to the security room
    if(i < 35){
        jumpscare1[i] = loadImage("anomaly_84_jumpscare" + i + ".png"); //loads each frame of the first anomaly jumpscare
        delay(50);
        image(jumpscare1[i],0,0); //draws each frame of the jumpscare
        i++;
        print("jumpscare frame : " + i + " "); //checks which frame the jumpscare is on
      
      }
      
      if(i >= 35){
      
        health = 0; //sets the health to 0 to load the game over screen
        anomaly_attacked[1] = false; //resets variables to reset the game
        anomaly_active[1] = false;
      
      }
    
    
    
  
  
  
  }

}
