class Pages{ //the enemy guide pages
  int pagenum; //the page number
   buttons button; //sets up the button
   PImage page_1 = loadImage("anomalies1.png"); //loads the first page (we are limited to 2 text objects so Im using sprites to get past that)
  
  Pages(){
  
  
  }
  public void page_check(){ //unused
    
      
    
  
  
  }

  public void update(){ //loads the pages
   
    
    if(pagenum == 0){ //loads first page, gives info on first anomaly
      background(0);
      button = new buttons("prev page", 30, 380); //loads the button to get to the previous page
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1,0,0); //loads the page
      button.update(); //updates the button state
    
    }
    
    if(pagenum == 1){ //loads second page
      background(0);
      button = new buttons("prev page", 30, 380); //loads the button to get to the previous page
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1,0,0); //loads the page
      button.update(); //updates the button state
    
    }
    
    if(pagenum == 2){ //loads third page
      background(0);
      button = new buttons("prev page", 30, 380); //loads the button to get to the previous page
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1,0,0); //loads the page
      button.update(); //updates the button state
    
    }
    
    if(pagenum == 3){ //loads (unused) fourth page
      background(0);
      button = new buttons("prev page", 30, 380); //loads the button to get to the previous page
      fill(70);
      rect(380,200,10,350);
      rect(110,110, 140, 140);
      fill(255);
      image(page_1,0,0); //loads the page
      button.update(); //updates the button state
    
    }
    
    if (pagenum == 0){ //
        pagenum = 3;
    } else {
    
      pagenum--;
    
    
    }
    
    
  
  }
  
  


}
