
class Screens { //screens such as the game over, guide, etc.
  buttons button; //main menu button to get into the game
  buttons button2; //button to get into the guide
  buttons button3; //button to go back to the main menu
  boolean main_menu; //checks if the screen is the main menu screen
  boolean game_over; //checks if the screen 
  boolean game_won;
  boolean guide;
  int page_count = 3;
  int page_num = 0;
  Pages page = new Pages();
  Rooms room = new Rooms(1, 0, 0);
  PImage title = loadImage("labratory_security-site_title.png"); //loads title_screen gui appearance
   PImage game_won_screen = loadImage("win_lose_screens1.png"); //loads "you survived" screen appearance
   PImage game_lost_screen = loadImage("win_lose_screens2.png"); //loads "you died" screen appearance
  String game_win = "You survived " + (int)day + " days! \n \n Your highest amount is " + (int)high_score_days + " days \n \nand " + (int)high_score_time + " seconds.\n \nAre you willing to keep going?";
  String game_lost = "You survived : " + (int)day + " days and " + (int)time + " seconds. \n \n Your highest amount is " + (int)high_score_days + " days \n \nand " + (int)high_score_time + " seconds.\n \nAre you willing to try again?";
  String game_over_text = "what are you doing here?";

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
      
    } else if (game_over == true || game_won == true) {

      button3 = new buttons("game_over", 200, 350);
      if (high_score_days < day){high_score_days = day;}
      if (high_score_time < time){high_score_time = time;}
      
      background(0);
      if (game_won == true){
        game_over_text = game_win;
        image(game_lost_screen, 0, 0);
      } else if (game_over == true){
        image(game_won_screen, 0, 0);
        game_over_text = game_lost;
      }
      
      text(game_over_text,30,60);
      
      fill(255);
      
      health = 100;
      button3.update();
      
    } else if (game_won == true) {

      button3 = new buttons("main menu", 200, 350);
      if (high_score_days < day){high_score_days = day;}
      if (high_score_time < time){high_score_time = time;}
      
      background(0);
      
      if (time >= 1000) { //loads the time.  If the time gets to 100, add 1 to the day and set the time to 0


      
      
      if(prev_day == day){
      day++;
      }
      
    }
      fill(255);
      
      health = 100;
      button3.update();
      
    }else {
      room.update();
      
      if (time >= 1000) { //loads the time.  If the time gets to 100, add 1 to the day and set the time to 0


      
      time = 1000;
      if(prev_day == day){
      day++;
      }
      Screen = new Screens(false,false,false,true);
    } else {
      prev_day = day;
      if(health > 0){
      time = time + 0.1; //add 0.1 to the time per tick
      }
    }
      
    }
  }
}
