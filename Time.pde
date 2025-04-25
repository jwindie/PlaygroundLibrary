class Time {
  float time;
  float deltaTime;
  void update() {
    float t = time;
    time += deltaTime = (1f/frameRate);
  }
}
