
Screens Screen; //sets up the screens


void setup(){
  size(400,400); //sets the scale that is required
  Screen = new Screens(true, false, false); //sets the kind of screen that shows
  noStroke(); //detail
  
}

void draw() {
  
  Screen.update(); //loads the main menu screen
  
  
 
  
  

}
