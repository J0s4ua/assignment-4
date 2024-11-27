class buttons{
  String button_type; //The type of button that is made
  boolean button_pressed; // check if the button is pressed
  int x;
  int y;
  int button_width;
  int button_height;
  PVector position = new PVector(x,y);
  buttons(String type){
    
    button_type = type;
    
  }
  
  public void update(){
    if (button_type == "main menu"){
      button_width = 160;
      button_height = 40;
      position.x = 200;
      position.y = 300;
      rectMode(CENTER);
      fill(100);
      rect(position.x, position.y, button_width, button_height);
      if(mouseX < (position.x + button_width/2) && mouseX > (position.x - button_width/2) &&
      mouseY < (position.y + button_height/2) && mouseY > (position.y - button_height/2)){
        fill(255);
        rect(position.x, position.y, button_width + 5, button_height + 5);
      }
    
    }
  }


}
