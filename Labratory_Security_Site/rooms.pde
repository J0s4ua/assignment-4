class Rooms{
  float type;
  float x;
  float y;
  PVector position = new PVector(x,y);
  buttons button2;
  buttons button3;
  boolean guide;
  Pages page = new Pages();
  Rooms (int t, int x2, int y2){
  
    type = t;
    x = x2;
    y = y2;
  
  
  }
  
  public void update(){
    
    button2 = new buttons("guide", 350, 350);
    button2.update();
    
    if (guide == true){
      
      button3 = new buttons("exit guide", 30, 30);
      background(0);
      page.update();
      button3.update();
      
      
    }
  
    if(type == 1){
      
      background(50);
      fill(70);
      rect(200,360,400,200);
    
    }
  
  
  }
}
