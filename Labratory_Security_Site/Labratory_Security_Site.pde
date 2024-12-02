public float time; //the time
public float health = 100; //secutiry health, if it reaches 0, game over
float day; //the amount of days survived, anomaly chance counter gets increased per day
boolean[] anomaly_active = new boolean[3];
int[] anomaly_count = new int[3];
int[] anomaly_max = new int[3];
int[] anomaly_location = new int[3];
float high_score_days;
float high_score_time;
Screens Screen; //sets up the screens


void setup() {
  size(400, 400); //sets the scale that is required
  Screen = new Screens(true, false, false); //sets the kind of screen that shows
  noStroke(); //detail
}

void draw() {

  Screen.update(); //loads the main menu screen

  if (health <= 0) {

    Screen = new Screens(false, true, false); //sets the gameover screen
    
  }
}
