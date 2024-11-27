class buttons{
  String button_type; //The type of button that is made
  boolean button_pressed; // check if the button is pressed
  int x;
  int y;
  int button_width;
  int button_height;
  Screens screen;
  Pages page_turn = new Pages();
  PVector position = new PVector(x,y);
  buttons(String type, int xpos, int ypos){
    
    button_type = type;
    position.x = xpos;
    position.y = ypos;
    
  }
  
  public void update(){
    if (button_type == "exit guide"){ //button to exit the guide
          button_width = 20; //button width
          button_height = 20; //button height
          rectMode(CENTER); //set rectangle mode
          if(mouseX < (position.x + button_width/2) && mouseX > (position.x - button_width/2) &&
          mouseY < (position.y + button_height/2) && mouseY > (position.y - button_height/2)){ //checks if the mouse is in the set bounderies, adding button width/height for collision
            fill(255,0,0);
            rect(position.x, position.y, button_width + 5, button_height + 5); //creates the button but lighter to show that the mouse is in the bounderies
            if (mousePressed == true){ //checks if user clicks while in the button area
              Screen = new Screens(true, false, false); //sets the screen to the main menu screen
            }
        }else {
          fill(100,0,0);
          rect(position.x, position.y, button_width, button_height); //creates the button but darker to show that the mouse is not in the bounderies
        }
      }
      
      if (button_type == "prev page"){ //button to check prevoius page
          button_width = 30; //button width
          button_height = 30; //button height
          rectMode(CENTER); //set rectangle mode
          if(mouseX < (position.x + button_width/2) && mouseX > (position.x - button_width/2) &&
          mouseY < (position.y + button_height/2) && mouseY > (position.y - button_height/2)){ //checks if the mouse is in the set bounderies, adding button width/height for collision
            fill(255);
            rect(position.x, position.y, button_width + 5, button_height + 5); //creates the button but lighter to show that the mouse is in the bounderies
            if (mousePressed == true){ //checks if user clicks while in the button area
              page_turn.page_check(); //changes the page
            }
        }else {
          fill(100);
          rect(position.x, position.y, button_width, button_height); //creates the button but darker to show that the mouse is not in the bounderies
        }
      }
      
    if (button_type == "main menu"){//checks the type of button
      button_width = 160;//button width
      button_height = 40;//button height
      rectMode(CENTER);//set rectangle mode
      
      if(mouseX < (position.x + button_width/2) && mouseX > (position.x - button_width/2) &&
      mouseY < (position.y + button_height/2) && mouseY > (position.y - button_height/2)){//checks if the mouse is in the set bounderies, adding button width/height for collision
        fill(255);
        rect(position.x, position.y, button_width + 5, button_height + 5);//creates the button but lighter to show that the mouse is in the bounderies
        if (mousePressed == true){ //checks if user clicks while in the button area
              Screen = new Screens(false, false, false); //begins the game
            }
      } else {
        fill(100);
        rect(position.x, position.y, button_width, button_height);//creates the button but darker to show that the mouse is not in the bounderies
      }
      
    
    }
    
    if (button_type == "guide"){//checks the type of button
        button_width = 40;//button width
        button_height = 40; //button height
        rectMode(CENTER);//set rectangle mode
        if(mouseX < (position.x + button_width/2) && mouseX > (position.x - button_width/2) &&
        mouseY < (position.y + button_height/2) && mouseY > (position.y - button_height/2)){//checks if the mouse is in the set bounderies, adding button width/height for collision
          fill(255);
          rect(position.x, position.y, button_width + 5, button_height + 5);//creates the button but lighter to show that the mouse is in the bounderies
          if (mousePressed == true){//checks if user clicks while in the button area
            Screen = new Screens(false, false, true); //sets the screen to the guide screen
          }
      }else {
        fill(100);
        rect(position.x, position.y, button_width, button_height);//creates the button but darker to show that the mouse is not in the bounderies
      }
        
  }


}
}
