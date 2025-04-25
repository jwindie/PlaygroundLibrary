class Button extends HoverArea  {  
  color colour, hoverColour, selectedColour, disableColour;
  boolean hovered;
  boolean disabled;
  boolean selected;
  Button (float x, float y, float w, float h) {
    super (x, y ,w, h);
  }
  @Override 
  void draw() {
    if (selected) fill (selectedColour);
    else fill (colour);
    
    if (hovered) {
      strokeWeight (4);
      stroke(hoverFill);
    }else noStroke();
    
    if (disabled) fill(Colors.buttonDisabled);
    
    rect (
      position.x, 
      position.y, 
      size.x, 
      size.y,
      Settings.cornerRadius,
      Settings.cornerRadius,
      Settings.cornerRadius,
      Settings.cornerRadius
      );  
  }
  
  void update() {
    if (disabled) return;
     hovered = 
       mouseX >= position.x && mouseX <= position.x +size.x &&
       mouseY >= position.y && mouseY <= position.y +size.y
     ;
  }
  
  //boolean shouldDraw() {
  //  //returns true if any part of this object is on screen
  //  if (position.x < width || position.y < height) return false;
  //  if (position.x + size .x > width)
    
  //}
  
  boolean click(int mouseButton) {
    return selected = !selected;
  }
}
