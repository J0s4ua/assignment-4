public class Anomalies {
  int[] chance = new int[3];
  int x;
  int y;
  PVector position = new PVector(x,y);
  int prev_time;
  PImage anomaly_84_a = loadImage("Anomaly_84.png");
PImage anomaly_84_b = loadImage("Anomaly_85.png");

Anomalies(){


}

  public void update(){
    
    
    
    if (anomaly_active[1] == true && anomaly_location[1] == 2){
      
      image(anomaly_84_a, position.x,position.y);
      if (prev_time < (int)time + 30){
        static_blink = true;
        anomaly_location[1] = 3;
        prev_time = (int)time;
      
      }
    
    
    
    }
    
    if (anomaly_active[1] == true && anomaly_location[1] == 3){
      
      image(anomaly_84_a, position.x,position.y);
      if (prev_time < time + 30){
        static_blink = true;
        anomaly_location[1] = 2;
        prev_time = (int)time;
      
      }
    
    
    
    }
    
    if (anomaly_active[1] == false) {
    
      
      if (chance[1] > 50 && chance[1] < 60){
    
    
      anomaly_active[1] = true;
      anomaly_count[1]++;
      anomaly_location[1] = 2;
      prev_time = (int)time;
    
    }
    
    }
    
    if (keyPressed == true && key != 'e') {

        if (position.x <= -800) {

          position.x = -800;
        } else {

          if (key == 'd') {

            position.x = position.x - 4;
          }
        }

        if (position.x < 0) {

          if (key == 'a') {

            position.x = position.x + 4;
          }
        } else {

          position.x = 0;
        }
      }
    
    
  }
}
