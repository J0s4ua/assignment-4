class buttons {//loads the buttons
  String button_type; //The type of button that is made
  boolean button_pressed; // check if the button is pressed
  int x; //button horizontal location
  int y; //button vertical location
  int button_width; //button width
  int button_height; //button height
  Screens screen; //sets screens based on the button
  Pages page_turn = new Pages(); //loads the guide pages
  boolean Game_start = false; //checks if the game is started or not (in case certain buttons are only loaded if the game is started)
  PVector position2 = new PVector(x, y); //the position of the rooms in the cameras
  PImage info = loadImage("info.png"); //information button (unselected)
  PImage info2 = loadImage("info2.png"); //information button (selected)
  buttons(String type, int xpos, int ypos) { //loads inserted variables in the class

    button_type = type; //the kind of button that is used
    position2.x = xpos; //sets the horizontal location of the button
    position2.y = ypos; // sets the vertical location of the button
  }

  public void update() {
    if (button_type == "exit guide") { //button to exit the guide
      button_width = 20; //button width
      button_height = 20; //button height
      rectMode(CENTER); //set rectangle mode
      if (mouseX < (position2.x + button_width/2) && mouseX > (position2.x - button_width/2) &&
        mouseY < (position2.y + button_height/2) && mouseY > (position2.y - button_height/2)) { //checks if the mouse is in the set bounderies, adding button width/height for collision
        fill(255, 0, 0);
        rect(position2.x, position2.y, button_width + 5, button_height + 5); //creates the button but lighter to show that the mouse is in the bounderies
        if (mousePressed == true) { //checks if user clicks while in the button area
          Screen = new Screens(false, false, false, false); //closes guide
        }
      } else {
        fill(100, 0, 0);
        rect(position2.x, position2.y, button_width, button_height); //creates the button but darker to show that the mouse is not in the bounderies
      }
    }

    if (button_type == "prev page") { //button to check prevoius page
      button_width = 30; //button width
      button_height = 30; //button height
      rectMode(CENTER); //set rectangle mode
      if (mouseX < (position2.x + button_width/2) && mouseX > (position2.x - button_width/2) &&
        mouseY < (position2.y + button_height/2) && mouseY > (position2.y - button_height/2)) { //checks if the mouse is in the set bounderies, adding button width/height for collision
        fill(255);
        rect(position2.x, position2.y, button_width + 5, button_height + 5); //creates the button but lighter to show that the mouse is in the bounderies
        if (mousePressed == true) { //checks if user clicks while in the button area
          page_turn.page_check(); //changes the page
        }
      } else {
        fill(100);
        rect(position2.x, position2.y, button_width, button_height); //creates the button but darker to show that the mouse is not in the bounderies
      }
    }

    if (button_type == "main menu") {//checks the type of button
      button_width = 160;//button width
      button_height = 40;//button height
      rectMode(CENTER);//set rectangle mode

      if (mouseX < (position2.x + button_width/2) && mouseX > (position2.x - button_width/2) &&
        mouseY < (position2.y + button_height/2) && mouseY > (position2.y - button_height/2)) {//checks if the mouse is in the set bounderies, adding button width/height for collision
        fill(255);
        rect(position2.x, position2.y, button_width + 5, button_height + 5);//creates the button but lighter to show that the mouse is in the bounderies
        if (mousePressed == true) { //checks if user clicks while in the button area
          c = c + (int)day + 1;
          anomaly_attacked = new boolean[c];
          anomaly_active = new boolean[c];
          anomaly_location = new int[c];
          anomaly_health = new int[c];
          Screen = new Screens(false, false, false, false);
          time = 0;
          Game_start = true;
          //begins the game
        }
      } else {
        fill(100);
        rect(position2.x, position2.y, button_width, button_height);//creates the button but darker to show that the mouse is not in the bounderies
      }
    }

    if (button_type == "guide") {//checks the type of button
      button_width = 40;//button width
      button_height = 40; //button height
      rectMode(CENTER);//set rectangle mode
      if (mouseX < (position2.x + button_width/2) && mouseX > (position2.x - button_width/2) &&
        mouseY < (position2.y + button_height/2) && mouseY > (position2.y - button_height/2)) {//checks if the mouse is in the set bounderies, adding button width/height for collision
        fill(255);
        image(info2, position2.x-25, position2.y-25);//creates the button but lighter to show that the mouse is in the bounderies
        if (mousePressed == true) {//checks if user clicks while in the button area
          Screen = new Screens(false, false, true, false); //sets the screen to the guide screen
        }
      } else {
        fill(120);
        image(info, position2.x-20, position2.y-20);//creates the button but darker to show that the mouse is not in the bounderies
      }
    }

    if (button_type == "game_over") {//checks the type of button, in this case its the button to back from the game_over screen to the menu screen
      button_width = 200;//button width
      button_height = 40; //button height
      rectMode(CENTER);//set rectangle mode
      if (mouseX < (position2.x + button_width/2) && mouseX > (position2.x - button_width/2) &&
        mouseY < (position2.y + button_height/2) && mouseY > (position2.y - button_height/2)) {//checks if the mouse is in the set bounderies, adding button width/height for collision
        fill(255);
        rect(position2.x, position2.y, button_width, button_height);//creates the button but lighter to show that the mouse is in the bounderies
        if (mousePressed == true) {//checks if user clicks while in the button area
          Screen = new Screens(true, false, false, false); //sets the screen to the main menu screen
          time = 0;
          Game_start = false;
        }
      } else {
        fill(120);
        rect(position2.x, position2.y, button_width, button_height);//creates the button but darker to show that the mouse is not in the bounderies
      }
    }
  }
  public boolean game() {

    if (Game_start == true) {

      return true;
    } else {

      return false;
    }
  }
}
