public class Anomalies {
  int[] chance = new int[3];
  int[] random_position = new int[3];
  boolean[] anomaly_attacked = new boolean[3];
  int x;
  int y;
  PVector position1 = new PVector(x, y);
  int prev_time;
  PImage anomaly_84_a1 = loadImage("anomaly_84.png");
  PImage anomaly_84_a2 = loadImage("anomaly_85.png");
  int appearance;
  PImage bullet3 = loadImage("hit_effect.png"); //bullet detail 2
  float cooldown = 1;
  Jumpscare jumpscare = new Jumpscare(); //sets the kind of screen that shows

  Anomalies() {
  }

  public void update() {


  
    if (anomaly_active[1] == true && anomaly_location[1] == 2) { //first anomaly, checks if the anomaly is in the second room
      if (type == 2) { //checks if the room the player is looking in is room no.2
        appearance = (int)(random(1, 2) + 0.5);
        if (appearance == 1) {
          image(anomaly_84_a1, position1.x + random_position[1], position1.y);
        }
        if (appearance == 2) {
          image(anomaly_84_a2, position1.x + random_position[1], position1.y);
        }
        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178 && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
          print(anomaly_health[1]);
        }
      }
      if (prev_time + (int)random(30, 60) < (int)time) {
        static_blink = true;
        anomaly_location[1] = 3;
        random_position[1] = (int)random(-10, 1000);
        prev_time = (int)time;
      }
    }

    if (anomaly_active[1] == true && anomaly_location[1] == 3) {

      if (type == 3) {
        appearance = (int)random(1, 2);
        if (appearance == 1) {
          image(anomaly_84_a1, position1.x + random_position[1], position1.y);
        }
        if (appearance == 2) {
          image(anomaly_84_a2, position1.x + random_position[1], position1.y);
        }
        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178  && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
          print(anomaly_health[1]);
        }
      }
      if (prev_time + (int)random(30, 60) + 30 < time) {

        static_blink = true;
        anomaly_location[1] = 4;
        random_position[1] = (int)random(-10, 1000);
        prev_time = (int)time;
      }
    }

    if (anomaly_active[1] == true && anomaly_location[1] == 4) {

      if (type == 4) {
        appearance = (int)random(1, 2);
        if (appearance == 1) {
          image(anomaly_84_a1, position1.x + random_position[1], position1.y);
        }
        if (appearance == 2) {
          image(anomaly_84_a2, position1.x + random_position[1], position1.y);
        }
        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178  && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
          image(bullet3, mouseX-20 + (random(-10, 10)), mouseY-20 + (random(-10, 10)));
        }
      }
      if (prev_time + (int)random(30, 60) + 30 < time) {

        static_blink = true;

        anomaly_location[1] = 5;

        random_position[1] = (int)random(-10, 1000);
        prev_time = (int)time;
      }
    }


    if (anomaly_active[1] == true && anomaly_location[1] == 5) {

      if (type == 5) {
        appearance = (int)random(1, 2);

        if (appearance == 1) {
          image(anomaly_84_a1, position1.x + random_position[1], position1.y);
        }
        if (appearance == 2) {
          image(anomaly_84_a2, position1.x + random_position[1], position1.y);
        }
        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178  && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
        }
      }

      if (prev_time + (int)random(30, 60) + 30 < time) {

        static_blink = true;
        if (health > 10) {
          anomaly_location[1] = 6;
        } else {
        
          anomaly_attacked[1] = true;
        
        }

        random_position[1] = (int)random(-10, 1000);
        prev_time = (int)time;
      }
    }


    if (anomaly_active[1] == true && anomaly_location[1] == 6) {

      if (type == 6) {
        appearance = (int)random(1, 2);

        if (appearance == 1) {
          image(anomaly_84_a1, position1.x + random_position[1], position1.y);
        }
        if (appearance == 2) {
          image(anomaly_84_a2, position1.x + random_position[1], position1.y);
        }
        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178  && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
        }
      }
      if (prev_time + (int)random(10,30) < time) {
        if (health - 10 > 1) {
          health = health - 10;
        } else {

          anomaly_location[1] = 5;
        }
        random_position[1] = (int)random(-10, 50);
        prev_time = (int)time;
      }
    }

    if (anomaly_active[1] == false) {

      if (cooldown <= 0) {
        chance[1] = (int)random(0, 100);
        cooldown = 10;
        print(chance[1]);
      } else {

        cooldown = cooldown - (0.1 * (day + 1));
      }

      if ((int)chance[1] > 50 && (int)chance[1] < 60) {

        prev_time = (int)time;
        anomaly_location[1] = 2;
        anomaly_active[1] = true;
        random_position[1] = (int)random(-10, 1000);
        
        anomaly_health[1] = 100;
        print("anomaly spawned\n");
      }
    }

    for (int i = 0; i < anomaly_health.length; i++) {
      if (anomaly_active[i] == true) {
        if (anomaly_health[i] <= 0) {
          chance[1] = (int)random(0, 100);
          static_blink = true;
          anomaly_active[i] = false;
        }
      }
    }

    if (keyPressed == true && key != 'e') {

      if (position1.x <= -800) {

        position1.x = -800;
      } else {

        if (key == 'd') {

          position1.x = position1.x - 4;
        }
      }

      if (position1.x < 0) {

        if (key == 'a') {

          position1.x = position1.x + 4;
        }
      } else {

        position1.x = 0;
      }
    }
    
    if (anomaly_attacked[1] == true){
    
      jumpscare.anomaly84_jumpscare();
    
    }
    
  }
}
