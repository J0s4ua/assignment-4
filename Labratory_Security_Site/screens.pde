
class Screens { //screens such as the game over, guide, etc.
  buttons button; //main menu button to get into the game
  buttons button2; //button to get into the guide
  buttons button3;
  boolean main_menu;
  boolean game_over;
  boolean guide;
  int page_count = 3;
  int page_num = 0;
  Pages page = new Pages();
  Rooms room = new Rooms(1, 0, 0);
  PImage title = loadImage("labratory_security-site_title.png"); //loads title_screen gui appearance

  Screens(boolean m, boolean g, boolean g2) {

    main_menu = m;
    game_over = g;
    guide = g2;
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

      button3 = new buttons("exit_guide", 200, 350);
      if (high_score_days < day){high_score_days = day;}
      if (high_score_time < time){high_score_time = time;}
      time = 0;
      background(0);
      page.update();
      button3.update();
      text("You survived : " + day + "days. /n and" + time + "seconds. /n Your highest amount is " + high_score_days + "days /n and " + high_score_time + "/n are you willing to try again?",30,40);
    } else {
      room.update();
    }
  }
}
