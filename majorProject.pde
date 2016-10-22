import processing.sound.*;

SoundFile horror;
SceneOne scene1;
SceneTwo scene2;
SceneThree scene3;
SceneFour scene4;
SceneFive scene5;
SceneSix scene6;

int sceneIndex;

boolean mouseDown;
boolean pmouseDown;





void setup() {
  fullScreen();
  scene1 = new SceneOne();
  scene2 = new SceneTwo();
  scene3 = new SceneThree();
  scene4 = new SceneFour();
  scene5 = new SceneFive();
  scene6 = new SceneSix();
  sceneIndex = 1; // start at scene 1
  horror = new SoundFile(this,"horror-01.mp3"); 
  horror.loop();
 
 
}

void draw() {
  // figure out if the mouse has been
  // newly-pressed on this draw frame
  mouseDown = mousePressed && !pmouseDown;
  pmouseDown = mousePressed;
  
  // this is the "scene management" bit
  switch(sceneIndex){
  case 1:
    // draw "scene one" stuff
    scene1.display();

    // if it's time to move on, do it
    if (scene1.shouldTransition())
      sceneIndex = 2;

    // "break out" of the switch statement
    break;
  case 2:
    scene2.display();

    if (scene2.shouldTransition())
      sceneIndex = 3;

    break;
  case 3:
    // this code never transitions out of scene three
    scene3.display();
    if (scene3.shouldTransition())
      sceneIndex = 4;
    break;
  case 4:
    // this code never transitions out of scene three
    scene4.display();
    if (scene4.shouldTransition() == 2) // you win the game
      sceneIndex = 5;
  else if (scene4.shouldTransition() == 1)  //you lose the game
      sceneIndex = 6;
    break;  
    
  //this is   
  case 5:
    
     scene5.display();
 
    break;
    
  case 6:
   
    scene6.display();
     
    break;
    
    
  }
}