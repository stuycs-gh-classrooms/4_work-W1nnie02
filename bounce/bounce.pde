//global constants
int BALL_SIZE = 10;
int PADDLE_HEIGHT = 20;
int PADDLE_WIDTH = 100;

//driver variables
Ball b;
Paddle player;
boolean playing;
float blockWidth = random (50, 300);
float numBlocks = random (10, 15);
Block wall[][];

void setup() {
  size(700, 400);
  background (0);
  wall = new Block[numBlocks][blockWidth];
  b = new Ball();
  player = new Paddle();
}

void draw() {
  b.display();
  player.display();
}
