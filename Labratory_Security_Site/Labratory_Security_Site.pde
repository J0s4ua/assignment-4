public float time; //the time
public float health = 100; //secutiry health, if it reaches 0, game over
public int c;
public float type; //variable to check which room is loaded
public float day; //the amount of days survived, anomaly chance counter gets increased per day
public int turret_damage = 25;
public float high_score_days;
public PImage static1;
public boolean flash;
public boolean static_blink = false;
public int i = 1;
public float high_score_time;
public Screens Screen; //sets up the screens
public float prev_day;
public int[] anomaly_count = new int[3];
public boolean[] anomaly_attacked = new boolean[3];
public boolean[] anomaly_active = new boolean[3];
public int anomaly_max;
public int[] anomaly_location = new int[3];
public int[] anomaly_health = new int[3];




void setup() {
  size(400, 400); //sets the scale that is required
  frameRate(60);
  for (int i = 0; i < anomaly_active.length; i++) {
      anomaly_active[i] = false;
    }
  Screen = new Screens(true, false, false, false); //sets the kind of screen that shows
  
  noStroke(); //detail
  
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
