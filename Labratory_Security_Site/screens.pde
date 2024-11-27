

class Screens{
  buttons button;
  boolean main_menu;
  boolean game_over;
  boolean guide;
  
  
  Screens(boolean m, boolean g, boolean g2){
    
    main_menu = m;
    game_over = g;
    guide = g2;
  
  }
  public void update(){
  
    if (main_menu == true){
      button = new buttons("main menu");
      background(0);
      button.update();

    
    
    }
  
  
  }
  


}
