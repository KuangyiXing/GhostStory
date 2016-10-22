class SceneTwo {
  
  PImage img;
  PImage ghost;
  PImage poem;
  DialogBox db;
  SoundFile walking;
  SoundFile pageflip;
  Env env;
  
  PImage open;
  PImage close;
  int oldIndex; 
  int newIndex;
  int h;

  SceneTwo() {
    walking = new SoundFile(majorProject.this,"wooden-floor.wav");
    walking.amp(4.0);
    env = new Env(majorProject.this);
    
    
    pageflip = new SoundFile(majorProject.this,"page-flip.mp3");
    db = new DialogBox("One day, you come back home. You find room is so silent and dark. You walk to the room and want to have a sleep <click the door>");
    img = loadImage("image/ds-02.png");
    img.resize(width,height);
    
    ghost = loadImage("image/femaleghost.png");
    
    poem = loadImage("image/maryshawpoem.jpg");
    
    open = loadImage("image/open.png");
    close = loadImage("image/close.png");
    
    oldIndex = 0;
    newIndex = 0;
    h = 0;
  
  }
  
  
   boolean isClicked(){
   if(mouseX > width - 320 && mouseX < width - 220 && mouseY > height - 520 && mouseY <height - 320  && mousePressed == true)
      {
       walking.play();
      return true;}
   else return false;
        
      }
      
      
  
  void display(){
    
     image(img,0,0); 
     img.filter(GRAY);
     
     db.drawBox(100, height-300, width-200, 200, 5);
     
     if (mouseX > width/2 ) {
       image(close,250,height/2);
       image(open, 250, height/2 - 100);
       image(close,250,height/2 - 200); }
     else 
     {
       image(open, 250,height/2);
       image(close,250,height/2 - 100);
       image(open, 250,height/2 - 200); }
     
    
     
    
   
    
    if(mouseX > 600 && mouseX < 900 && mouseY > 100 && mouseY < 500 ) 
    {
       if(oldIndex == newIndex) pageflip.play();
       image(poem,width/2 - 200 ,height/2 - 200); 
    
    }
    
    else    
    {
      oldIndex = newIndex;
      oldIndex ++;
       
    }
     newIndex ++;   
  // fill(232);
   //rect(600,100,300,400); 
     
  }
  


 boolean shouldTransition(){
    // only transition when the click is near the mushroom
    return isClicked();
  } 
}