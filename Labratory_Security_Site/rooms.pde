public class Rooms{ //the rooms shown in the cameras
  float type;
  float x = 0;
  float day = 1;
  float health = 100;
  float y;
  PImage computer = loadImage("computer1.png"); //loads computer neutral state (when there are no anomalies spawned)
  PImage computer2 = loadImage("computer2.png"); //loads computer warning state (when there is an anomaly in the area)
  PImage dark = loadImage("darkness.png"); //darkness effect around the room
  PImage room1 = loadImage("room.png");
  PImage bullet = loadImage("gun_shot.png");
  PImage bullet2 = loadImage("gun_shot2.png");
  PImage anomaly_84_a = loadImage("anomaly_84.png");
  PImage anomaly_84_a_1 = loadImage("anomaly_85.png");
  PVector position = new PVector(x,y);
  
  buttons button2;
  buttons button3;
  boolean guide;
  boolean flash;
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
      
      GUI player_gui = new GUI(health,day);
      player_gui.update();
      
      
    }
      
      if(type == 2){
      
      
      if (keyPressed == true && key != 'e'){
        
        if(position.x <= -800){
        
       position.x = -800;
      
      } else { 
      
        if(key == 'd'){
        
        position.x = position.x - 4;
        
        }
      
      }
      
      if(position.x < 0){
        
       if(key == 'a'){
        
        position.x = position.x + 4;
        
        }
      
      }else { 
      
        position.x = 0;
      
      }
      
      print(position.x);
        
      
      }
      
      background(50);
      fill(70);
      rect(200,360,400,200);
      image(room1,position.x,y);
      
      image(dark,0,0);
      
      if (mouseX > 0 && mouseX < 40 && mouseY > 0 && mouseY < 40){
        fill(150,0,0);
        rect(42,42,0,0);
        if(mousePressed == true){
        type = 1;
        }
      
      }
      else {
      fill(100,0,0);
        rect(40,40,0,0);
      
      }
      
      
    
    }
    
    button2 = new buttons("guide", 350, 350);
    button2.update();
    
    
    if(type == 2){
    if (mouseX > 0 && mouseX < 40 && mouseY > 0 && mouseY < 40){
        fill(150,0,0);
        rect(20,20,42,42);
        if(mousePressed == true){
        type = 1;
        }
      
      }
      else {
      fill(100,0,0);
        rect(20,20,40,40);
      
      }
      
      noFill();
      stroke(0,255,255);
      strokeWeight(2);
      arc(mouseX, mouseY, 20,20,0,PI*2);
      line(mouseX-20,mouseY,mouseX+20,mouseY);
      line(mouseX,mouseY-20,mouseX,mouseY+20);
      strokeWeight(0);
      
      
      
      
      if(keyPressed == true && key == 'e'){
        
        if(flash == true){
        fill(255,255,255,50);
        rect(width/2,height/2,width,height);
        image(bullet,mouseX-20,mouseY-20);
        
        
        
        }
        
        if(flash == true){
          flash = false;
        }
        
        if(flash == false){
          flash = true;
        }
        
        
        
      } 
    
    }
    }
    
    
  }
