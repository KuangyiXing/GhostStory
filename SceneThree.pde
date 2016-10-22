class SceneThree {

  PImage img1;
  PImage img2;
 
  DialogBox db1;
  DialogBox db2;
  boolean isClicked;
  boolean shouldtransit;

  SceneThree() {
   
    db1 = new DialogBox("Looks something on the bed <click the bed>");
    db2 = new DialogBox("Hey, I am Billy. I am one of puppets Mary Shaw have. If you want to survive, you have to destory me.");
    img1 = loadImage("image/ds-03.jpg");
    img1.resize(width,height);
    img2 = loadImage("image/billy.png");
 
    
    img1.filter(GRAY);

    isClicked = false;
    shouldtransit = false;
}
  
  

  
  void display(){
   
    if(mouseX > width - 1000 && mouseX < width - 600 && mouseY > height - 500 && mouseY <height - 300 && mousePressed == true)
     isClicked = true;
     
     
    
    
    
    if(isClicked){
    image(img2,0,0);
    
    db2.drawBox(100,height - 500, width - 200,200,3);
    fill(175,17,28);
    textSize(96);
    text("Begin",800,600);
   if(mousePressed == true && mouseX >800 && mouseX <1100 && mouseY >500 && mouseY < 600 ) shouldtransit = true;
    }
    
    else{
     image(img1,0,0);
     db1.drawBox(100, height-300, width-200, 200, 5);
     }
     //fill(232);
     //rect(800,500,300,100);
     //fill(232);
    // rect(width-1000,height-500,400,200);
     
  }

  boolean shouldTransition(){
    // only transition when the click is near the mushroom
    return shouldtransit;
    
  }
  
  
  
  
  
  
  
}