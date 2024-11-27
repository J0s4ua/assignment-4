class buttons{
  String button_type; //The type of button that is made
  boolean button_pressed; // check if the button is pressed
  int x;
  int y;
  int button_width;
  int button_height;
  PVector position = new PVector(x,y);
  buttons(String type, int xpos, int ypos){
    
    button_type = type;
    position.x = xpos;
    position.y = ypos;
    
  }
  
  public void update(){
    if (button_type == "main menu"){
      button_width = 160;
      button_height = 40;
      rectMode(CENTER);
      
      if(mouseX < (position.x + button_width/2) && mouseX > (position.x - button_width/2) &&
      mouseY < (position.y + button_height/2) && mouseY > (position.y - button_height/2)){
        fill(255);
        rect(position.x, position.y, button_width + 5, button_height + 5);
      } else {
        fill(100);
        rect(position.x, position.y, button_width, button_height);
      }
      
    
    }
    if (button_type == "guide"){
        button_width = 40;
        button_height = 40; 
        rectMode(CENTER);
        if(mouseX < (position.x + button_width/2) && mouseX > (position.x - button_width/2) &&
        mouseY < (position.y + button_height/2) && mouseY > (position.y - button_height/2)){
          fill(255);
          rect(position.x, position.y, button_width + 5, button_height + 5);
      }else {
        fill(100);
        rect(position.x, position.y, button_width, button_height);
      }
  }


}
}
