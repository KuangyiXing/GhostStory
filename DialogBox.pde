class DialogBox {
  String boxText;
  int charCounter;
  int displayCounter;

  DialogBox(String boxText){
    charCounter = 0;
    displayCounter = 0;
    this.boxText = boxText;
  }

  void drawBox(float x, float y, float width, float height, int wordRate){
    // if you want a "background box", put the drawing code here


    
    // set text colour and size
    fill(240);
    textSize(30);
    // draw the text (one char at a time)
    text(boxText.substring(0, charCounter), x, y, width, height);
    if (displayCounter % wordRate == 0 && charCounter < boxText.length()) {
      charCounter++;
    }
    displayCounter++;
  }

  boolean isDone(){
    return charCounter >= boxText.length();
  }
}
