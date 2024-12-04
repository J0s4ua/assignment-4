class Jumpscare{

  PImage[] jumpscare1 = new PImage[35];
  int i = 1;



  public void anomaly84_jumpscare(){
    
    
    type = 1;
    if(i < 35){
        jumpscare1[i] = loadImage("anomaly_84_jumpscare" + i + ".png");
        delay(50);
        image(jumpscare1[i],0,0);
        i++;
        print("jumpscare frame : " + i + " ");
      
      }
      
      if(i >= 35){
      
        health = 0;
        anomaly_attacked[1] = false;
        anomaly_active[1] = false;
      
      }
    
    
    
  
  
  
  }

}
