
class Card {
  int promptFontSize = 12;
  int nameFontSize =   9;
    
  float w =            3.875 *  dpi;
  float h =            2.75 *   dpi;
  float cornerRadius = 0.1875 * dpi;
  float textWidth =    2.5 *    dpi;
  float trimOffset =   0.0625 * dpi;
  float trimLength =   0.125 *  dpi;
  
  boolean showOutline;
  String name, prompt;
  
  
  Card(String _prompt, String _name, boolean _showOutline) {
    prompt = _prompt;
    name = _name;
    showOutline = _showOutline;
  }
  
  void addToPage(float x, float y) {
    pushMatrix();
    translate(x, y);
    
    // outline
    if (showOutline) {
      stroke(255,0,0);
    }
    else {
      noStroke();
    }
    strokeWeight(0.5);
    fill(255);
    rect(0,0, w,h, cornerRadius);
    
    // trim marks
    addTrimMarks();
    
    // prompt
    fill(0);
    noStroke();
    textAlign(CENTER, CENTER);
    // full-sized text for regular prompts, smaller
    // size for instructions and title card
    if (name != null) {
      textSize(promptFontSize);
    }
    else {
      textSize(nameFontSize);
    }
    rectMode(CENTER);
    text(prompt, w/2, h/2, textWidth, h);
    rectMode(CORNER);
    
    // if instructions, add scissors icon too
    if (prompt.equals(instructionsText)) {
      textAlign(LEFT, BASELINE);
      textSize(30);
      text("✁", 30,5);
    }
    
    // name
    if (name != null) {
      textAlign(RIGHT, BOTTOM);
      textSize(nameFontSize);
      text("(" + name + ")", w-20, h-20);
    }
    
    popMatrix();
  } 
  
  void addTrimMarks() {
    stroke(0);
    trimLine();      // UL
    
    pushMatrix();    // UR
    translate(w,0);
    rotate(HALF_PI);
    trimLine();
    popMatrix();
    
    pushMatrix();    // LR
    translate(w,h);
    rotate(PI);
    trimLine();
    popMatrix();
    
    pushMatrix();    // LL
    translate(0,h);
    rotate(-HALF_PI);
    trimLine();
    popMatrix();
  }
  
  void trimLine() {
    line(-trimOffset,0, -trimLength, 0);  // horiz
    line(0,-trimOffset, 0,-trimLength);   // vert
  }
}
