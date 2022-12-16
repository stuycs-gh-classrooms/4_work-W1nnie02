
class Paddle {
  int px;
  int py;
  int pHeight;
  int pWidth;

Paddle() {
  px = 0;
  py = 399;
  pWidth = PADDLE_WIDTH;
  pHeight = PADDLE_HEIGHT;
}

void display() {
  rect(px, py, pWidth, pHeight);
}
