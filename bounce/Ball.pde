class Ball {
  int cx, cy;
  int xVel, yVel;
  int radius;

  Ball() {
    radius = BALL_SIZE;
    cx = width/2;
    cy = height - (BALL_SIZE + PADDLE_HEIGHT);
  }

  void display() {
    circle(cx, cy, radius*2);
  }
}
