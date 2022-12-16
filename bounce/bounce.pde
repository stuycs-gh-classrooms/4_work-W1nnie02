//global constants
int BALL_SIZE = 10;
int PADDLE_HEIGHT = 100;
int PADDLE_WIDTH = 20;

//driver variables
Ball b;
Paddle player;
boolean playing = false;
int blockWidth = random (50, 300);
int numBlocks = random (10, 15);
Block wall[][];

void setup() {
  size(700, 400);
  wall = new Block[numBlocks][blockWidth];
  for (int n = 0
