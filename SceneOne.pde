class SceneOne {
  PImage img;
  PFont gothic;
  int h;
  SoundFile ghost;
 // Env env;

  
  SceneOne() {
       
    //   env = new Env(majorProject.this);
         
       
       ghost = new SoundFile(majorProject.this,"ghost.wav");
       
       ghost.play();
  
    img = loadImage("image/ds-01.jpg");
    img.resize(width,height);
    
    gothic = createFont("font/gothic.ttf",108);
    h = 0;
    image(img,0,0);
   
  }
 
  
  
 boolean isClicked(){
   if(mouseX > 200 && mouseX < 500 && mouseY > height - 300 && mouseY <height - 200  && mousePressed == true)
     
     { ghost.stop();
     return true;}
   else
       return false;
        
 }
 


  void display(){
   
   //   env.play(horror,0.0001,0.1,0.5,0.4);
     
   //  fill(232);
   //  rect(200,height-300,300,100);  
     fill(175,17,28);
     textFont(gothic);
     text("Begin", 200, height - 200);
     
     if(mouseX > width - 400 ){
     noStroke(); 
     fill(175,17,28);
     ellipse(width - 460,h+ 360,random(15,30),random(15,30));
     ellipse(width - 220, h + 360, random(15,30),random(15,30)); 
     h++;}
}
   
   

  boolean shouldTransition(){
    return isClicked();
  }
}