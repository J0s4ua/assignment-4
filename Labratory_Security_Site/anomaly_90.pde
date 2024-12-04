public class Anomaly_90 {
  int chance;
  int[] random_position = new int[3];
  int x = 0;
  int y = 200;
  PVector position1= new PVector(x, y);
  int prev_time2;
  PImage anomaly_90_passive = loadImage("anomaly_90_1.png");
  PImage[] anomaly_90_hostile = new PImage[6];
  int appearance;
  int i3 = 1;
  int i2 = 2;
  PImage bullet3 = loadImage("hit_effect.png"); //bullet detail 2
  float cooldown = 1;
  Jumpscare jumpscare = new Jumpscare(); //sets the kind of screen that shows
  boolean attacking = false;


  public void update() {

    if (keyPressed == true) {

      if (position1.x <= -800) {

        position1.x = -800;
        
      } else if (key == 'd') {

        position1.x = position1.x - 4;
        
      }


      if (position1.x < 0) {

        if (key == 'a') {

          position1.x = position1.x + 4;
          
        }
      } else {

        position1.x = 0;
      }
    }

    if (anomaly_active[1] == false) {

      if (cooldown <= 0) {
        chance = (int)random(0, 100);
        cooldown = 10;
        
        print("anomaly 90 : " + chance + "\n");
      } else {
        attacking = false;
        cooldown = cooldown - (0.1 * (day + 1));
      }

      if ((int)chance> 50 && (int)chance < 60) {

        prev_time2 = (int)time;
        anomaly_location[1] = 7;
        anomaly_active[1] = true;
        random_position[1] = (int)random(-10, 1000);
        anomaly_health[1] = 100 + (5 * (int)day);
        print("anomaly 90 spawned\n");
        print("anomaly 90 is in room " + anomaly_location[1]);
      }
    } else if (anomaly_health[1] <= 0 && attacking == false) {
      
      attacking = true;
      anomaly_health[1] = 100;
      random_position[1]+=20;
      
    } else if (anomaly_health[1] <= 0 && attacking == true) {

      anomaly_active[1] = false;
      attacking = false;
    }


    

    if (i2 <= 7) {

      if (anomaly_active[1] == true && anomaly_location[1] == i2) { //first anomaly, checks if the anomaly is in the second room
        if (type == i2) { //checks if the room the player is looking in is room no.2

          if (attacking == false) {
            image(anomaly_90_passive, position1.x + random_position[1], position1.y);
            print(position1.x + random_position[1]);
          }




          if (attacking == true) {
            anomaly_90_hostile[i3] = loadImage("anomaly_90_" + (i3) + ".png");
            image(anomaly_90_hostile[i3], position1.x + random_position[1], position1.y);

            if (i3 < 7) {

              i3 = 1;
            } else {

              i3++;
            }
          }

          if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178 && keyPressed == true && key == 'e') {

            anomaly_health[1] = anomaly_health[1] - turret_damage;
            print(anomaly_health[1]);
          } 



          if (prev_time2 + (int)random(20, 40) < (int)time) {
            static_blink = true;
            anomaly_location[1] = (int)random(1, 7);
            print("anomaly 90 is in room " + anomaly_location[1]);
            random_position[1] = (int)random(-10, 1000);
            prev_time2 = (int)time;
          }
        }
      }
      if (i2 < 7) {
        i2++;
      } else {

        i2 = 2;
      }
    }

    if (anomaly_active[1] == true && anomaly_location[1] == 1) { //first anomaly, checks if the anomaly is in the second room
      if (type == 1) { //checks if the room the player is looking in is room no.1

        if (attacking == false) {
          image(anomaly_90_passive, position1.x, position1.y + 200);
        }

        if (mouseX > position1.x + random_position[1] + 84 && mouseX < position1.x + random_position[1] + 178 && keyPressed == true && key == 'e') {

          anomaly_health[1] = anomaly_health[1] - turret_damage;
          print(anomaly_health[1]);
        }
      }

      if (attacking == true) {
        anomaly_90_hostile[i3] = loadImage("anomaly_90_" + (i3) + ".png");
        image(anomaly_90_hostile[i3], position1.x, position1.y + 200);

        if (i3 < 6) {

          i3 = 1;
        } else {

          i3++;
        }
      }

      if (prev_time2 + (int)random(20, 40) < (int)time) {
        static_blink = true;
        anomaly_location[1] = (int)random(1, 7);
        print("anomaly 90 is in room " + anomaly_location[1]);
        random_position[1] = (int)random(-10, 1000);
        prev_time2 = (int)time;
      }
    }
  }
}
