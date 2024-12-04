class Rooms { //the rooms shown in the cameras

  float x = 0;
  float day = 1;
  float health = 100;
  float y;
  PImage computer = loadImage("computer1.png"); //loads computer neutral state (when there are no anomalies spawned)
  PImage computer2 = loadImage("computer2.png"); //loads computer warning state (when there is an anomaly in the area)
  PImage dark = loadImage("darkness.png"); //darkness effect around the room
  PImage room1 = loadImage("room.png"); //first room in camera
  PImage room2 = loadImage("room2.png"); //second room in camera
  PImage room3 = loadImage("room4.png"); //first room in camera
  PImage room4 = loadImage("room5.png"); //second room in camera
  PImage room5 = loadImage("room6.png"); //second room in camera
  PImage room6 = loadImage("room8.png"); //second room in camera
  PImage bullet = loadImage("gun_shot.png"); //bullet detail 1
  PImage bullet2 = loadImage("gun_shot3.png"); //bullet detail 2
  int i2; //extra loop 
  PImage camera_gui; //loads the camera GUI
  
  buttons button2; //loads one of the buttons
  buttons button3; //loads one of the buttons
  boolean guide; //checks if the guide is open or closed
  Anomalies anomalies = new Anomalies(); //loads the first anomaly
  Anomaly_90 anomaly_90 = new Anomaly_90(); //loads the second anomaly
  int i = 1; //used for loops
  Pages page = new Pages(); //loads the guide pages
  Rooms (int t, int x2, int y2) { //imports variables from outside the class

    type = t; //type of room
    position.x = x2; //room position (horizontal)
    position.y = y2; //room position (vertical)
  }

  public void update() {



    if (guide == true) { //if the guide is open

      button3 = new buttons("exit guide", 30, 30); //load the button to leave the guide
      background(0);
      page.update(); //updates the pages
      button3.update(); //updates the button (checks for collision)
    }

    if (type == 1) { //checks if the room type is 1, it will load the security room (that you are in)


      background(50);
      fill(70);
      rect(200, 360, 400, 200); //loads the floor (that you can barely see)
      image(computer, 0, 50); //loads the computer that allows you to look through the cameras

      image(dark, 0, 0); //darkness effect
      if (mouseX > 130 && mouseX < 270 && mouseY > 120 && mouseY < 240) { //checks if the player clicked in a specific area
        if (mousePressed == true) { //checks if the player clicked
          static_blink = true; //loads the static effect
          type = 2; //sets the room to the second room
        }
      }

      GUI player_gui = new GUI(); //loads the player gui
      player_gui.update(); //updates the state of the player gui
      button2 = new buttons("guide", 350, 350); //loads the button to open the guide
      button2.update(); //updates the state of the button
    }

    /* <--- (remove this if you want to try it)
     if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240){ //test game over button, comment out if you dont want it there
     fill(150);
     rect(20,200,42,42);
     if(mousePressed == true){
     health = 0;
     
     }
     
     
     } else {
     
     fill(100);
     rect(20,200,40,40);
     }
     (remove this if you want to try it)  --> */

    if (type == 2) {//it checks for the first room. If you are looking at that room, it will load the room and set up the buttons to go through the other rooms. Anomalies will use this to move through the rooms.




      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room1, position.x, y); //draws the first room

      image(dark, 0, 0); //loads the darkness effect

      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(380, 200, 42, 42);
        if (mousePressed == true) {
          type = 3;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(380, 200, 40, 40);
      }



      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(20, 200, 42, 42);
        if (mousePressed == true) {
          type = 7;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(20, 200, 40, 40);
      }
    }



    if (type == 3) {{//it checks for the second room.

      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room2, position.x, y);

      image(dark, 0, 0);



      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(380, 200, 42, 42);
        if (mousePressed == true) {

          type = 4;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(380, 200, 40, 40);
      }

      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(20, 200, 42, 42);
        if (mousePressed == true) {
          type = 2;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(20, 200, 40, 40);
      }
    }

    if (type == 4) { {//it checks for the third room.

      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room3, position.x, y);

      image(dark, 0, 0);



      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(380, 200, 42, 42);
        if (mousePressed == true) {

          type = 5;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(380, 200, 40, 40);
      }

      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(20, 200, 42, 42);
        if (mousePressed == true) {
          type = 3;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(20, 200, 40, 40);
      }
    }

    if (type == 5) {//it checks for the fourth room. Anomalies go back to this room when your health is low enough

      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room4, position.x, y);

      image(dark, 0, 0);



      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(380, 200, 42, 42);
        if (mousePressed == true) {

          type = 6;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(380, 200, 40, 40);
      }

      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(20, 200, 42, 42);
        if (mousePressed == true) {
          type = 4;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(20, 200, 40, 40);
      }
    }

    if (type == 6) {//it checks for the generator room. If anomalies enter this area, they will damage the generator

      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room5, position.x, y);

      image(dark, 0, 0);



      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(380, 200, 42, 42);
        if (mousePressed == true) {

          type = 7;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(380, 200, 40, 40);
      }

      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(20, 200, 42, 42);
        if (mousePressed == true) {
          type = 5;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(20, 200, 40, 40);
      }
    }
    
    if (type == 7) { //it checks for the last room. The holding area for anomaly 90 which currently does nothing to the player, simply only distracts the player

      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room6, position.x, y);

      image(dark, 0, 0);



      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(380, 200, 42, 42);
        if (mousePressed == true) {

          type = 2;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(380, 200, 40, 40);
      }

      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {//checks if the player clicked in a specific area
        fill(150);
        rect(20, 200, 42, 42);
        if (mousePressed == true) {
          type = 6;
          static_blink = true;
          mousePressed = false;
        }
      } else {

        fill(100);
        rect(20, 200, 40, 40);
      }
    }

    
    anomalies.update(); //loading the anomalies under the camera GUI
    anomaly_90.update(); //loading the anomalies under the camera GUI


    if (type != 1) { //checks if the player is in the cameras. This part of the code loads the gui of the game cameras.


      PImage camera_gui = loadImage("camera_gui" + ((int)type -1) + ".png");
      image(camera_gui, 0, 0);

      button2 = new buttons("guide", 350, 350);
      button2.update();
      
      noFill();
          stroke(0, 255, 255);
          strokeWeight(2);
          arc(mouseX, mouseY, 20, 20, 0, PI*2);
          line(mouseX-20, mouseY, mouseX+20, mouseY);
          line(mouseX, mouseY-20, mouseX, mouseY+20);
          strokeWeight(0);

      if (keyPressed == true && key == 'e') {


        if (flash == true) {
          fill(255, 255, 255, 50);
          rect(width/2, height/2, width, height);
          image(bullet2, pmouseX-20 + (random(-10, 10)), pmouseY-20 + (random(-10, 10)));
          image(bullet, mouseX-20 + (random(-10, 10)), mouseY-20 + (random(-10, 10)));

          
          flash = false;
        } else {

          flash = true;
        }
      }

      if (keyPressed == true && key != 'e') { //this loads the 

        if (position.x <= -800) {

          position.x = -800;
        } else {

          if (key == 'd') {

            position.x = position.x - 4;
          }
        }

        if (position.x < 0) {

          if (key == 'a') {

            position.x = position.x + 4;
          }
        } else {

          position.x = 0;
        }
      }

      if (mouseX > 0 && mouseX < 40 && mouseY > 0 && mouseY < 40) {
        fill(200, 0, 0);
        rect(20, 20, 40, 40);
        if (mousePressed == true) {
          static_blink = true;
          type = 1;
        }
      } else {
        fill(250, 0, 0);
        rect(20, 20, 40, 40);
      }
    }
  }
}
