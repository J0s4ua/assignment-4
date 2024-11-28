class Pages{
  int pagenum;
   buttons button;
   PImage page_1 = loadImage("anomalies1.png");
  String[] text = new String[4];
  
  Pages(){
  
  
  }
  public void page_check(){
    
      if (pagenum == 0){
        pagenum = 3;
    } else {
    
      pagenum--;
    
    
    }
    
  
  
  }

  public void update(){
    
    text[0] = "Anomaly #84 \n \n A flesh abomanation hive that \n always holds a mask. \n This anomaly creates drones out \n of its own or anothers flesh. It's \n drones can burrow into materials \n and always have a mask similar \n to its hive. \n To deal with this anomaly's \n drones, attack it with the  sentries \n until it flees (Click).";
    text[1] = "";
    text[2] = "";
    text[3] = "";
    
    if(pagenum == 0){
      background(0);
      button = new buttons("prev page", 30, 380);
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1,0,0);
      button.update();
    
    }
    
    if(pagenum == 1){
      background(0);
      button = new buttons("prev page", 30, 380);
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      text(text[1],200,40);
      button.update();
    
    }
    
    if(pagenum == 2){
      background(0);
      button = new buttons("prev page", 30, 380);
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      text(text[2],200,40);
      button.update();
    
    }
    
    if(pagenum == 3){
      background(0);
      button = new buttons("prev page", 30, 380);
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      text(text[3],200,40);
      button.update();
    
    }
    
    
  
  }
  
  


}
