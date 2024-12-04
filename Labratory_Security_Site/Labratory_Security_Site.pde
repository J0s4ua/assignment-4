public float time; //the time
public float health = 100; //secutiry health, if it reaches 0, game over
public int c; //unused
int x;//horizontal position of the rooms (x)
int y;//y-position of the rooms (vertical)
public float type; //variable to check which room is loaded
public float day; //the amount of days survived, anomaly chance counter gets increased per day
public int turret_damage = 25; //the damage the turrets do to anomalies
public float high_score_days; //the most days survived
public PImage static1; //the static animation that plays
public boolean flash; //to check if the bullet is fired or not
public boolean static_blink = false; //to enable and disable the static effect
public int i = 1; //used for loops
public float high_score_time; //the most amount of time survived
public Screens Screen; //sets up the screens
public float prev_day; //checking the previous day (ex. if day = 2, prev_day = 1)
public int[] anomaly_count = new int[3]; //counts the amount of anomalies in a room (not used)
public boolean[] anomaly_attacked = new boolean[3]; //checks which anomaly attacked the player to play the jumpscare cooresponding to the anomaly
public boolean[] anomaly_active = new boolean[3]; //checks which anomaly is active
public int anomaly_max; //checks the maximum amount of anomalies that can be spawned (unused)
public int[] anomaly_location = new int[3]; //checks the location the anomaly is at
public int[] anomaly_health = new int[3]; //checks the amount of health the anomaly has
PVector position = new PVector(x, y); //the position of everything



void setup() {
  size(400, 400); //sets the scale that is required for the project
  frameRate(60); //sets the frame rate
  for (int i = 0; i < anomaly_active.length; i++) { //used to load the anomalies and tell each anomaly that they are inactive
      anomaly_active[i] = false; //sets the anomaly state to neutral
    }
  Screen = new Screens(true, false, false, false); //sets the kind of screen that shows
  
  noStroke(); //detail
  
}

void draw() {
  
  
  Screen.update(); //loads the main menu screen

  if (health <= 0) { //checks if the player health = 0

    Screen = new Screens(false, true, false, false); //sets the gameover screen
  }

  if (static_blink == true) { //the static effect that plays


    static1 = loadImage("static" + i + ".png"); //loads the static pngs
    image(static1, 0, 0);//draws the pngs in order
    i++; //loop state
    delay(100); //used to make it easier to see the static, if you make it smaller it makes it faster, if you make it bigger it makes it slower


    if (i >= 3) { //at the end of the "loop" it stops drawing the static

      static_blink = false;
      i = 1;
    }
  }
}
