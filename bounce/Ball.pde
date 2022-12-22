class Ball {
  int cx, cy;
  int xVel, yVel;
  int radius;

  Ball() {
    radius = BALL_SIZE;
    reset();
cx = width/2;
    cy = height - (BALL_SIZE + PADDLE_HEIGHT);
  }

  void reset() {
    cx = width/2;
    cy = height - (BALL_SIZE + PADDLE_HEIGHT);
    xVel = int(random(5));
    yVel = int(random(5));
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
      cx+= xVel
        ;
      cy+= yVel;
    }//moveBall
    void xbounce() {
      xVel*= -1;
      cx += xVel;
    }//xbounce

    void ybounce() {
      yVel*= -1;
      cy += yVel;
    }//ybounce

    void changeSpeed(int x, int y) {
      xVel += x;
      yVel += y;
    }//changeSpeed
  }
