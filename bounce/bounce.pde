int BALL_SIZE = 10;
int PADDLE_HEIGHT = 15;
int PADDLE_WIDTH = 150;
int BLOCK_HEIGHT = 100;
int BLOCK_WIDTH = 200;
boolean playing;

//driver variables
Ball b;
Paddle player;
int score;
float numBlocks = random (10, 15);
Block[][] poke;

void setup() {
  size(700, 400);
  background (0);
  score = 0;
  playing = false;
  b = new Ball();
  player = new Paddle();
}

void draw() {
  background(0);
  b.display();
  player.display();
  for (int i = 1; i <= poke[i].length; i++) {
    for (int j = 1; j <= poke[j].length; j++) {
      poke[i][j].display();
    }
  }
  if (playing == true) {
    b.move();
    player.left();
    player.right();
    if (player.collison(b)==true) {
      b.ybounce();
    }
  }
  if (b.cy + b.radius == height) {
    b.reset();
    player.reset();
    score = 0;
    println(score);
    playing = false;
  }
}

void blockPos(int rows, int cols, int value) {
  for (int i = 1; i <= rows; i++) {
    int y = i * BLOCK_HEIGHT;
    int offset = 0;
    if  (i % 2 == 0) {
      offset = BLOCK_WIDTH / 2;
    } else {
      offset = 0;
    }

    for (int j = 1; j <= cols; j++) {
      if (offset == 0) {
        poke[i-1][j-1] = new Block(BLOCK_WIDTH, y, value);
      } else {
        poke[i-1][j-1] = new Block(BLOCK_WIDTH + offset, y, value);
      }
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    if (playing == false) {
      playing = true;
    } else {
      playing = false;
    }
  }
  if (key == 'r') {
    b.reset();
  }
  if (key == 'a') {
    player.left();
  }
  if (key == 'd') {
    player.right();
  }
}
