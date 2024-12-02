class Anomalies{
  public boolean anomaly_84_active = false;
  public int[] chance = new int[3];
  public int locaton;
  public int[] anomaly_count = new int[3];
  public int anomaly_health;
  public boolean[] anomaly_spawned = new boolean[3];
  Anomaly_84 anomaly_84 = new Anomaly_84(anomaly_count[1]);
  PImage anomaly_84_a = loadImage("anomaly_84.png");
  PImage anomaly_84_a_1 = loadImage("anomaly_85.png");
  
  
  
  
  
   public void update(){
   
   anomaly_84.update();
   
   
   
   
   }
   
   public void chance(){
   
     chance[1] = (int)random(0,100);
     
     if(chance[1] >=40 && chance[1] <= 50){
     
       anomaly_spawned[1] = true;
       
     }
     
     if (anomaly_spawned[1] == true){
     
       anomaly_count[1]++;
       print(anomaly_count[1] + "anomaly_84 spawned!");
       chance[1] = 0;
       anomaly_spawned[1] = false;
     
     }
     
     
   
   }
   


}

class Anomaly_84{
  Rooms room = new Rooms(0,0,0);
   PImage anomaly_84_a = loadImage("anomaly_84.png");
  PImage anomaly_84_a_1 = loadImage("anomaly_85.png");
  int anomaly_count;
  Anomaly_84(int c){ //loads the health and the day counter
    
    anomaly_count = c; //health
    
  }
  ArrayList<Anomaly_84> anomaly_8 = new ArrayList<Anomaly_84>();
  
  public void update(){
  
  for(int i = 0; i < anomaly_count; i++){
         anomaly_8.add(new Anomaly_84(i));
         image(anomaly_84_a,room.position.x,room.position.y);
      }
  
  
  }
  



}
