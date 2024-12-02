class Rooms { //the rooms shown in the cameras
  float type; //variable to check which room is loaded
  float x = 0;
  float day = 1;
  float health = 100;
  float y;
  PImage computer = loadImage("computer1.png"); //loads computer neutral state (when there are no anomalies spawned)
  PImage computer2 = loadImage("computer2.png"); //loads computer warning state (when there is an anomaly in the area)
  PImage dark = loadImage("darkness.png"); //darkness effect around the room
  PImage room1 = loadImage("room.png"); //first room in camera
  PImage room2 = loadImage("room2.png"); //second room in camera
  PImage bullet = loadImage("gun_shot.png");
  PImage bullet2 = loadImage("gun_shot3.png");
  PImage camera_gui;
  PVector position = new PVector(x, y);
  buttons button2;
  buttons button3;
  boolean guide;
  boolean flash;
  PImage static1 = loadImage("gun_shot3.png");
  boolean static_blink = false;
  int i = 1;
  Pages page = new Pages();
  Rooms (int t, int x2, int y2) {

    type = t;
    position.x = x2;
    position.y = y2;
  }

  public void update() {



    if (guide == true) {

      button3 = new buttons("exit guide", 30, 30);
      background(0);
      page.update();
      button3.update();
    }

    if (type == 1) {

      //if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240){ //test game over button, comment out if you dont want it there
      //fill(150);
      //rect(20,200,42,42);
      //if(mousePressed == true){
      //health = 0;

      //}


      //} else {

      //fill(100);
      //rect(20,200,40,40);
      //}

      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(computer, 0, 50);

      image(dark, 0, 0);
      if (mouseX > 130 && mouseX < 270 && mouseY > 120 && mouseY < 240) {
        if (mousePressed == true) {
          static_blink = true;
          type = 2;
        }
      }

      GUI player_gui = new GUI(health, day);
      player_gui.update();
      button2 = new buttons("guide", 350, 350);
      button2.update();
    }

    if (type == 2) {




      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room1, position.x, y);

      image(dark, 0, 0);

      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {
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



      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {
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





      if (keyPressed == true && key == 'e') {

        if (flash == true) {
          fill(255, 255, 255, 50);
          rect(width/2, height/2, width, height);
          image(bullet2, pmouseX-20, pmouseY-20);
          image(bullet, mouseX-20, mouseY-20);
        }
      }

      button2 = new buttons("guide", 350, 350);
      button2.update();
    }



    if (type == 3) {

      background(50);
      fill(70);
      rect(200, 360, 400, 200);
      image(room2, position.x, y);

      image(dark, 0, 0);




      if (keyPressed == true && key == 'e') {

        if (flash == true) {
          fill(255, 255, 255, 50);
          rect(width/2, height/2, width, height);
          image(bullet2, pmouseX-20, pmouseY-20);
          image(bullet, mouseX-20, mouseY-20);
        }
      }

      if (mouseX > 360 && mouseX < 400 && mouseY > 160 && mouseY < 240) {
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

      if (mouseX > 0 && mouseX < 40 && mouseY > 180 && mouseY < 240) {
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
      
      button2 = new buttons("guide", 350, 350);
      button2.update();
      
    }

    if (flash == true) {
      flash = false;
    }

    if (flash == false) {
      flash = true;
    }
    if (type != 1) {

      PImage camera_gui = loadImage("camera_gui" + ((int)type -1) + ".png");
      image(camera_gui, 0, 0);
      

      if (keyPressed == true && key == 'e') {
        if (keyPressed == true && key != 'e') {

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

        


        if (flash == true) {
          fill(255, 255, 255, 50);
          rect(width/2, height/2, width, height);
          image(bullet2, pmouseX-20, pmouseY-20);
          image(bullet, mouseX-20, mouseY-20);

          noFill();
          stroke(0, 255, 255);
          strokeWeight(2);
          arc(mouseX, mouseY, 20, 20, 0, PI*2);
          line(mouseX-20, mouseY, mouseX+20, mouseY);
          line(mouseX, mouseY-20, mouseX, mouseY+20);
          strokeWeight(0);
        }
      }

      if (keyPressed == true && key != 'e') {

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

    if (static_blink == true) {


      static1 = loadImage("static" + i + ".png");
      image(static1, 0, 0);
      i++;
      delay(100);
      print(type);

      if (i >= 3) {

        static_blink = false;
        i = 1;
      }
    }
  }
}
