class SceneFour {
  
  PImage img;
  ArrayList<Ghost> ghosts;
  PImage fire;
  int score;
  
  int time;
  int i;
 
  SoundFile burn;
  SoundFile clock;
  
  SceneFour() {
    
    burn = new SoundFile(majorProject.this,"burn.mp3");   
    clock = new SoundFile(majorProject.this,"clock.mp3");   
   
    img = loadImage("image/ds-02.png");
    img.resize(width,height);
    img.filter(GRAY);
    
    fire = loadImage("image/fire.png");
    score = 0;
    ghosts = new ArrayList<Ghost>();
   for (int i=0; i<20; i++) {
    ghosts.add(new Ghost());
  }
  
  time = width;
  i = 0;
  

  
  }
  
  
/*   boolean isClicked(){
   if(mouseX > width - 320 && mouseX < width - 220 && mouseY > height - 520 && mouseY <height - 320  && mousePressed == true)
      return true;
   else
       return false;
        
 }*/
  
  void drawFire(){
     
     image(fire,mouseX - 50,mouseY - 50);
  
  } 
  
  void display(){
    
    horror.stop();
    
    
    
     image(img,0,0);
     drawFire();
     drawTime();
     
     for(Ghost g:ghosts){
     g.speedup();
     g.move();
     g.display();
     }
     
     for(int i = 0;i<ghosts.size();i++){
        Ghost g = ghosts.get(i);
        if(g.isKicked()) {score ++; burn.play(); ghosts.remove(i);  }   
     }
     
     textSize(36);
     text("You have killed : " + score, width - 400, 200 );
     
     
     
     
    if(i == 0) 
    {    
      clock.loop();
      i++;
      
    }
     
     
     
     
     
     
  }
  
  
  void drawTime(){
    
    fill(175,17,28);
    rect(0,0,time, 50);  
    time = time - 2;
  
  
  }




 int shouldTransition(){

    if(score < 20 && time < 0 ) {clock.stop();return 1;}
    else if(score == 20 && time > 0){ clock.stop();return 2;}
    else return 0;
  }
  
}