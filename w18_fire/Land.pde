class Land {
  int state, nextState;
  int x, y;
  int landSize;
  int landColor;

  //constructor
  Land() {
    x = 0;
    y = height/2;
    state = 0;
    landSize = 20;
  }

  Land(int px, int py, int pSize, int type) {
    x = px;
    y = py;
    landSize = pSize;
    state = type;
  }

  void display() {
    if (state == 0) {
      landColor = DIRT_COLOR;
    } else if (state == 1) {
      landColor = FIRE_COLOR;
    } else if (state == 2) {
      landColor = BURNT_COLOR;
    } else if (state == 3) {
      landColor = GRASS_COLOR;
    }
    square (x, y, landSize);
  }

  void updateNextState(int state) {
    if (this.state == 1) {
      this.nextState = 2;
    }
    if (this.state == 1 && this.nextState == 3) {
      this.state = 2;
    } else {
      state = 0;
    }
  }

  void changeState() {
    state = nextState;
  }
}
