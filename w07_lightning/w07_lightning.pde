void drawLightning(int x, int y, int numParts) {
  int nextx;
  int nexty;
  strokeWeight(random (1.5, 4));
  stroke(#F5FF6F);
  while (numParts > 0) {
      nextx = int(random(x - 5, x + 5));
      nexty = int(y + height/numParts);
      line(x, y, nextx, nexty);
      x = nextx;
      y = nexty;
    numParts = numParts - 1;
  }
}

void setup() {
  size(500, 500);
  background(0);
  drawLightning(150, 50, 15);
  drawLightning(160, 50, 15);
  drawLightning(170, 50, 15);
  drawLightning(200, 50, 15);
  drawLightning(250, 50, 15);
}
