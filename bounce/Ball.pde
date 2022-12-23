class Ball {
  int cx, cy;
  int xVel, yVel;
  int radius;

  Ball() {
    radius = BALL_SIZE;
    reset();
  }

  Ball(int x, int y) {
    radius = BALL_SIZE;
    cx = x;
    cy = y;
    xVel = 3;
    yVel = 3;
  }//position constructor

  void reset() {
    cx = width/2;
    cy = height - (BALL_SIZE + PADDLE_HEIGHT);
    xVel = 3;
    yVel = 3;
  }

  void display() {
    circle(cx, cy, radius*2);
  }

  void move() {
    if (cx <= radius || cx >= (width - 1 - radius)) {
      xVel *= -1;
    }//x bounce
    if (cy <= radius || cy >= (height - 1 - radius)) {
      yVel *= -1;
    }//x bounce
    cx += xVel;
    cy += yVel;
  }//moveBall

  void ybounce() {
    yVel *= -1;
    cy += yVel;
  }//ybounce
}
