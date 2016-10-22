class Gif {
  ArrayList<PImage> images;
  
  float x, y;
  int counter;
  
 
  Gif(){
    // initialise the "images" ArrayList which will hold all the images
    images = new ArrayList<PImage>();
   
    for(int i = 1;i<10;i++)
    { PImage img = loadImage("data/mary/"+"mary-00"+i+".png");
     img.resize(width,height);
      images.add(img);  
    }

    // initialise counter, x and y values
   counter = 0;
   
  }

  void display(){
    
    
    if(counter < 9){
    PImage img = images.get(counter);
    image(img, x, y);
    delay(300);
    counter ++;}

   
   
  }
  

  
  
  
}