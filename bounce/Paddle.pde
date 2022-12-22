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
    px = px - 1;
}
  void right() {
    px = px + 1;
}

}
