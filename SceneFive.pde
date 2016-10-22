class SceneFive{

  
    PImage img;
    SoundFile scream;
    
    int i;
  
    SceneFive(){
    
        img = loadImage("image/marydead.jpg");
        img.filter(GRAY);
    
        i = 0;
        img.resize(width,height);
      
    }
     
     
     
     void display(){
       
       image(img,0,0);
       text("Mary Shaw is dead!!! ", width/2 - 200,height/2);
     
     }
    
    
}