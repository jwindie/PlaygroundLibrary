//Color utility class
class Color {
  int randomColor () {
    return color ((int)random(255), (int)random(255), (int)random(255));
  }
  int randomColor (int max) {
    return color ((int)random(max), (int)random(max), (int)random(max));
  }
  int randomColor (int min, int max) {
    return color ((int)random(min, max), (int)random(min, max), (int)random(min, max));
  }
  int[] toRGB (int colour) {
    return new int[] {
      (int)red(colour),
      (int)green (colour),
      (int)blue(colour)
    };
  }
  int[] toRGBA (int colour) {
    return new int[] {
      (int)red(colour),
      (int)green (colour),
      (int)blue(colour),
      (int)alpha (colour)
    };
  }
  int fromArray (int... values) {
    switch(values.length) {
      case 1: return color (values[0]);
      case 2: return color (values[0], values[1]);
      case 3: return color (values[0], values[1], values[2]);
      case 4: return color (values[0], values[1], values[2], values[3]);
      default: return color(0);
    }
  }
  int lerp (int a, int b, float t) {
    int[] ca = toRGBA(a);
    int[] cb = toRGBA(b);
    int[] cf = new int[4];
    for (int i = 0; i < 4; i++) {
      cf[i] = (int) lerp (ca[i], cb[i], t);
    }
    return color (cf[0], cf[1], cf[2], cf[3]);
  }
}

//Basic scene
class Scene {
  PGraphics graphics;
  Scene (PGraphics graphics) {
    this.graphics = graphics;
  }
  void load(int[] args){}
  void unload(){}
  void update(float deltaTime){}
  void keyPressed(String key){}
  void keyReleased(String key){}
  void mousePressed(int button){}
  void mouseReleased(int button){}
  void mouseScrolled (int delta){}  
}

//Time class
class Time {
  float time;
  float deltaTime;
  void update() {
    float t = time;
    time += deltaTime = (1f/frameRate);
  }
}

//Trail that draws lines between an array of points
class Trail  {
  PVector [] points;
  Trail (int count) {
    points = new PVector[count];
  }
  
  void addPoint (float x, float y) {
    addPoint(new PVector (x, y));
  }
  void addPoint(PVector point) {
    for (int i = points.length -2; i >= 0; i --) {
      if (points[i] != null) points[i+1] = points[i];
      points[0] = point;
    }
  }
  void draw() {
    for (int i = 0; i < points.length -1; i ++) {
      if (points[i] == null) continue;
      if (points[i +1] == null) continue;
      line (points[i].x, points[i]. y, points [i+1].x , points[i+ 1].y);
    }
  }
  PVector getLastPoint() {
    return points[points.length-1];
  }
}
