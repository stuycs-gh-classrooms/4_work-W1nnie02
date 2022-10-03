int movingX; int movingY; int radius;

void circleRow(int startX, int endX, int y, int d) {
  for (startX = 50; startX < 499; startX++) {
    circle(startX, y, d);
    startX = startX + d;
  }
}

void setup() {
  size(500, 500);
  movingX = 50;
  movingY = 150;
  radius = 100;
}

void draw() {
  background(225);
  strokeWeight(2);
  stroke(#84AAA9);
  fill(#D7E8E7);
  circleRow(50, 450, 50, 100);
  stroke(#84AA96);
  fill(#D0DED6);
  circle(movingX, movingY, radius);
  movingX++;
}
