class Rooms{
  float type;
  float x;
  float y;
  PVector position = new PVector(x,y);
  Rooms (int t, int x2, int y2){
  
    type = t;
    x = x2;
    y = y2;
  
  
  }
  
  public void update(){
  
    if(type == 1){
      
      background(50);
      fill(70);
      rect(200,360,400,200);
    
    }
  
  
  }
}
