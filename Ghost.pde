class Ghost{

  PVector position;
  PVector direction;
  float size;
  color col;
  int number;
  float m;
  PImage billy;
  
  
  Ghost() {
    position = new PVector(random(width), random(height));
    direction = new PVector(random(-1, 1), random(-1, 1));
    direction.setMag(1.0);
    m = random(0,10);
    billy = loadImage("image/billy-head.png"); 
    billy.resize(100,100);
  }
  
  void display() {
    image(billy,position.x,position.y);
 
  }
  void speedup(){
    if(direction.x > 0){
     direction.x = direction.x + 0.001;}
    if (direction.y > 0){
     direction.y = direction.y + 0.001;}
     if(direction.x < 0){
     direction.x = direction.x - 0.001;
     }
     if(direction.y < 0){
     direction.y = direction.y - 0.001;
     }
  
  }
   
   
/*  void changePvector(Ghost b){
    direction = PVector.add((direction.mult((m - b.m)/(m + b.m)), b.direction.mult(2*b.m/(m + b.m))));
  } */
  
  void move() {
    //position = position.add(direction);
    position.x = (position.x + direction.x + width) % width;
    position.y = (position.y + direction.y + height) % height;
  }
 
  void drawDeath(){
    
    
    fill(175,17,28);
    ellipse(position.x,position.y ,random(15,30),random(15,30));
  
  
  }

  Boolean isKicked(){
     boolean kicked = false;
     if(mousePressed == true){
     if (sqrt(pow((position.x - mouseX + 50),2) + pow((position.y - mouseY + 50),2)) > 50)
      { kicked = false;}
     else
      { kicked = true;}
    }
  return kicked;
  
  }


}