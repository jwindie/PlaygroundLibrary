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
  return fromArray(cf);
}
