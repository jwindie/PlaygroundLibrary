class HoverArea {
  float x, y, w, h;
  boolean hover;
  HoverArea(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  boolean isPointOver (float xp, float yp) {
    return hover = xp > x && xp < x + w && yp > y && yp < y + h;
  }
  void draw() {
    stroke(hover ?  color(255) : color(0,0,255));
    strokeWeight (1);
    rect (x, y, w,h);
  }
}
