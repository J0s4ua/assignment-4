class GUI {


  
  float guiX = 0; //gui horizontal position
  float guiY = 320; //gui vertical position
  PImage phone = loadImage("phone.png"); //loads gui appearance

  GUI(float h, float d) { //loads the health and the day counter

    health = h; //health
    day = d; //day
  }


  public void update() { //process the gui


    if (mouseX > (guiX + 20) && mouseX < (guiX + 200) && mouseY >(guiY)) { //check if the mouse is in the gui's area

      guiY = 250; //open the gui
    } else { //if the mouse is not in the gui area

      guiY = 320; //close the gui
    }

    image(phone, guiX, guiY); //loads the gui appearance
    fill(health - 100, health * 2, 0); //loads the healthbar color
    rectMode(CORNER); //changes the mode of the rectangle so it shrinks only on one side when damaged.
    rect(guiX + 60, guiY + 90, health/1.5, 6);  //loads the actual healthbar
    rectMode(CENTER); //sets the mode back to normal
    fill(255); //sets the day text counter
    text("day :" + day, guiX + 60, guiY + 70); //there is no maximum amount of days, you have to get through as many as you can.


    if (time >= 100) { //loads the time.  If the time gets to 100, add 1 to the day and set the time to 0



      time = 100;
    } else {

      time = time + 0.1; //add 0.1 to the time per tick
    }
  }
}
