public float time; //the time
public float health = 100; //secutiry health, if it reaches 0, game over
float type; //variable to check which room is loaded
float day; //the amount of days survived, anomaly chance counter gets increased per day
boolean[] anomaly_active = new boolean[3];
int[] anomaly_count = new int[3];
int[] anomaly_max = new int[3];
int[] anomaly_location = new int[3];
int[] anomaly_health = new int[3];
int turret_damage = 25;
float high_score_days;
PImage static1;
boolean flash;
boolean static_blink = false;
int i = 1;
float high_score_time;
Screens Screen; //sets up the screens
float prev_day;


void setup() {
  size(400, 400); //sets the scale that is required
  Screen = new Screens(true, false, false, false); //sets the kind of screen that shows
  anomaly_active[1] = false;
  noStroke(); //detail
  for (int i = 0; i < anomaly_health.length; i++) {

        anomaly_health[i] = 100;
      }
}

void draw() {


  Screen.update(); //loads the main menu screen

  if (health <= 0) {

    Screen = new Screens(false, true, false, false); //sets the gameover screen
  }

  if (static_blink == true) {


    static1 = loadImage("static" + i + ".png");
    image(static1, 0, 0);
    i++;
    delay(100);


    if (i >= 3) {

      static_blink = false;
      i = 1;
    }
  }
}
