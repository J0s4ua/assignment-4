class Jumpscare{

  PImage jumpscare1;
  int i = 1;



  public void anomaly84_jumpscare(){
    
    static_blink = true;
    type = 1;
    
    
    if (static_blink == false){
    
      if(i < 35){
        i++;
        delay(50);
        jumpscare1 = loadImage("anomaly_84_jumpscare" + i + ".png");
        image(jumpscare1,0,0);
        
      
      }
      
      if(i >= 35){
      
        health = 0;
      
      }
      
      
    
    }
  
  
  
  }

}
