class GUI{
  
  float time;
  float health;
  float day;
  float guiX = 0;
  float guiY = 320;
  PImage phone = loadImage("phone.png");
  
  GUI(float h, float d){
    
    health = h;
    day = d;
    
  }
  
  
  public void update(){
    
    
    if (mouseX > (guiX + 20) && mouseX < (guiX + 200) && mouseY >(guiY)){
    
      guiY = 250;
    
    }
    
    else {
    
    guiY = 320;
    
    }
    
    image(phone,guiX,guiY);
    fill(health - 100,health * 2,0);
    rectMode(CORNER);
    rect(guiX + 60, guiY + 90, health/1.5, 6);
    rectMode(CENTER);
    fill(255);
    text("day :" + day, guiX + 60, guiY + 70);
    
    
    if (time >= 100){
    
    
    
    } else {
    
    time = time + 0.1;
    
    }
  }


}
