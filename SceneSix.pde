class SceneSix{

  
   Gif maryshaw;
   SoundFile scream;
   int i;
  
    SceneSix(){
    
      maryshaw = new Gif();
      scream = new SoundFile(majorProject.this, "scream.wav");
      i = 0;
      
    }
     
     
     
     void display(){
        
         maryshaw.display(); 
         
          if(i == 0) 
       {    
         scream.play();
          i++;
      
        }
  
         
     }
  
}