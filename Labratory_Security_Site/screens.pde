
class Screens { //screens such as the game over, guide, etc.
  buttons button; //main menu button to get into the game
  buttons button2; //button to get into the guide
  buttons button3; //button to go back to the main menu
  boolean main_menu;
  boolean game_over;
  boolean game_won;
  boolean guide;
  int page_count = 3;
  int page_num = 0;
  Pages page = new Pages();
  Rooms room = new Rooms(1, 0, 0);
  PImage title = loadImage("labratory_security-site_title.png"); //loads title_screen gui appearance

  Screens(boolean m, boolean g, boolean g2, boolean gw) {

    main_menu = m;
    game_over = g;
    guide = g2;
    game_won = gw;
  }
  public void update() {

    if (main_menu == true) {
      button = new buttons("main menu", 200, 300);
      background(0);
      button.update();
      button.game();
      image(title, 0, 0);
    } else if (guide == true) {

      button3 = new buttons("exit guide", 30, 30);
      background(0);
      page.update();
      button3.update();
      
    } else if (game_over == true) {

      button3 = new buttons("game_over", 200, 350);
      if (high_score_days < day){high_score_days = day;}
      if (high_score_time < time){high_score_time = time;}
      
      background(0);
      
      
      fill(255);
      text("You survived : " + (int)day + " days and " + (int)time + " seconds. \n \n Your highest amount is " + (int)high_score_days + " days \n \nand " + (int)high_score_time + " seconds.\n \nAre you willing to try again?",30,60);
      health = 100;
      button3.update();
      
    } else if (game_won == true) {

      button3 = new buttons("main menu", 200, 350);
      if (high_score_days < day){high_score_days = day;}
      if (high_score_time < time){high_score_time = time;}
      
      background(0);
      
      
      fill(255);
      text("You survived " + (int)day + " days! \n \n Your highest amount is " + (int)high_score_days + " days \n \nand " + (int)high_score_time + " seconds.\n \nAre you willing to keep going?",30,60);
      health = 100;
      button3.update();
      
    }else {
      room.update();
    }
  }
}
