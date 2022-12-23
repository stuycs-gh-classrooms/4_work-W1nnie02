class Block {
  float bx;
    float by;
  float bWidth;
  float bHeight;
  int value;

  Block (float x, float y, int v) {
    bx = x;
    by = y;
    bWidth = BLOCK_WIDTH;
    bHeight = BLOCK_HEIGHT;
    value = v;
  }

  void display() {
    rectMode(CENTER);
    fill(255);
    stroke(0);
    stroke(20);
    rectMode(CORNER);
    rect(bx - bWidth, by, bWidth, bHeight);
  }

  boolean hitBlock(Ball b) {
    if (b.cx >= (bx - bWidth - b.radius) && b.cx <= (bx - bWidth*2 + b.radius) && by + bHeight > b.cy - b.radius) {
      return true;
    } else {
      return false;
    }
  }
}
