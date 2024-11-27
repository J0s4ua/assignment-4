
class Screens{
  buttons button;
  buttons button2;
  buttons button3;
  boolean main_menu;
  boolean game_over;
  boolean guide;
  int page_count = 3;
  ArrayList<Pages> pages = new ArrayList<>();
  
  int min;
  int max;
  PVector page_position = new PVector(min,max);
  
  Screens(boolean m, boolean g, boolean g2){
    
    main_menu = m;
    game_over = g;
    guide = g2;
  
  }
  public void update(){
  
    if (main_menu == true){
      button = new buttons("main menu", 200, 300);
      background(0);
      button.update();
      
      button2 = new buttons("guide", 350, 350);
      button2.update();
      

    
    
    }
    
    if (guide == true){
      
      button3 = new buttons("exit guide", 30, 30);
      background(0);
      button3.update();
      noStroke();
      fill(70);
      rect(380,200,10,350);
      
      

    
    
    }
  
  
  }
  



}
