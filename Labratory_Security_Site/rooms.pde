class Rooms{
  float type;
  float x = 0;
  float day = 1;
  float health = 100;
  float y;
  PImage computer = loadImage("computer1.png"); //loads computer neutral state (when there are no anomalies spawned)
  PImage computer2 = loadImage("computer2.png"); //loads computer warning state (when there is an anomaly in the area)
  PImage dark = loadImage("darkness.png"); //darkness effect around the room
  PImage room1 = loadImage("room.png");
  PVector position = new PVector(x,y);
  buttons button2;
  buttons button3;
  boolean guide;
  Pages page = new Pages();
  Rooms (int t, int x2, int y2){
  
    type = t;
    position.x = x2;
    position.y = y2;
  
  
  }
  
  public void update(){
    
    
    
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
      image(computer,0,50);
      
      image(dark,0,0);
      if (mouseX > 130 && mouseX < 270 && mouseY > 120 && mouseY < 200){
        if(mousePressed == true){
        type = 2;
        }
      
      }
    }
      
      if(type == 2){
      
        if(position.x < 0){
        
       position.x = 0;
      
      }
      background(50);
      fill(70);
      rect(200,360,400,200);
      image(room1,position.x,y);
      
      image(dark,0,0);
      
      if (mouseX > 130 && mouseX < 270 && mouseY > 120 && mouseY < 200){
        if(mousePressed == true){
        type = 1;
        }
      
      }
      else {
      
        rect(20,20,50,50);
      
      }
    
    }
    
    button2 = new buttons("guide", 350, 350);
    button2.update();
    
    GUI player_gui = new GUI(health,day);
    player_gui.update();
    }
    
    
  }
