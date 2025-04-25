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
