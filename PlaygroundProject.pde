Trail trail = new Trail (20);

void setup() {
    size (768, 768, P2D);
    background (0);
    stroke (255);
    strokeWeight (3);
}

void draw() {
  background (0);
  stroke(randomColor());
  trail.addPoint (mouseX, mouseY);
  trail.draw();
  
}
