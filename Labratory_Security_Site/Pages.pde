class Pages{ //the enemy guide pages
  int pagenum = 0; //the page number
   buttons button; //sets up the button
   PImage[] page_1 = new PImage[3]; //loads the first page (we are limited to 2 text objects so Im using sprites to get past that)
   
  
  Pages(){
  
  
  }
  public void page_check(){ //unused
    
      if (pagenum == 0){ //moves the pages around
        pagenum = 2;
    } else {
    
      pagenum--;
    
    
    }
    
  
  
  }

  public void update(){ //loads the pages
   
    page_1[0] = loadImage("anomalies1.png");
    
    if(pagenum == 0){ //loads first page, gives info on first anomaly
    page_1[0] = loadImage("anomalies1.png");
      background(0);
      button = new buttons("prev page", 30, 380); //loads the button to get to the previous page
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1[0],0,0); //loads the page
      button.update(); //updates the button state
    
    }
    
    if(pagenum == 1){ //loads second page
    page_1[1] = loadImage("anomalies2.png");
      background(0);
      button = new buttons("prev page", 30, 380); //loads the button to get to the previous page
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1[1],0,0); //loads the page
      button.update(); //updates the button state
    
    }
    
    if(pagenum == 2){ //loads third page
    page_1[2] = loadImage("anomalies1.png");
      background(0);
      button = new buttons("prev page", 30, 380); //loads the button to get to the previous page
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1[2],0,0); //loads the page
      button.update(); //updates the button state
    
    }
    
    
    
    
    
    
  
  }
  
  


}
