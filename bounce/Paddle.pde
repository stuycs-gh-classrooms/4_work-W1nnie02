class Paddle {
  int px;
  int py;
  int pHeight;
  int pWidth;

  Paddle() {
    px = width/2 - (PADDLE_WIDTH/2);
    py = height - (PADDLE_HEIGHT);
    pWidth = PADDLE_WIDTH;
    pHeight = PADDLE_HEIGHT;
  }

  void display() {
    rect(px, py, pWidth, pHeight);
  }

  void left() {
    px -= 20;
  }
  void right() {
    px += 20;
  }

   void reset() {
   px = width/2 - (PADDLE_WIDTH/2);
   py = height - (PADDLE_HEIGHT);
   }
   
  boolean collison(Ball b) {
    if (b.cx > px - pWidth && b.cx < px + pWidth && b.cy > py - b.radius && b.cy < py + b.radius){
      return true;
    } 
    else {
      return false;
    }
  }
}
