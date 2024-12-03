public class Anomalies {
  int[] chance = new int[3];
  int[] random_position = new int[3];
  int x;
  int y;
  PVector position1 = new PVector(x, y);
  int prev_time;
  PImage anomaly_84_a1 = loadImage("anomaly_84.png");
  PImage anomaly_84_a2 = loadImage("anomaly_85.png");

  Anomalies() {
  }

  public void update() {



    if (anomaly_active[1] == true && anomaly_location[1] == 2) { //first anomaly, checks if the anomaly is in the second room
      if (type == 2) { //checks if the room the player is looking in is room no.2
        image(anomaly_84_a1, position1.x + random_position[1], position1.y);
        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178 && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
          print(anomaly_health[1]);
        }
      }
      if (prev_time +30 < (int)time) {
        static_blink = true;
        anomaly_location[1] = 3;
        random_position[1] = (int)random(-10, 1000);
        prev_time = (int)time;
      }
    }

    if (anomaly_active[1] == true && anomaly_location[1] == 3) {

      if (type == 3) {
        image(anomaly_84_a2, position1.x + random_position[1], position1.y);
        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178  && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
          print(anomaly_health[1]);
        }
      }
      if (prev_time + 30 < time) {

        static_blink = true;
        anomaly_location[1] = 2;
        random_position[1] = (int)random(-10, 1000);
        prev_time = (int)time;
      }
    }

    if (anomaly_active[1] == false) {

      chance[1] = (int)random(0, 100);

      if ((int)chance[1] > 50 && (int)chance[1] < 60) {

        prev_time = (int)time;
        anomaly_location[1] = 2;
        anomaly_active[1] = true;
        random_position[1] = (int)random(-10, 1000);
        anomaly_count[1]++;
        anomaly_health[1] = 100;
      }
    }

    for (int i = 0; i < anomaly_health.length; i++) {
      if (anomaly_active[i] == true) {
        if (anomaly_health[i] <= 0) {

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
  }
}
