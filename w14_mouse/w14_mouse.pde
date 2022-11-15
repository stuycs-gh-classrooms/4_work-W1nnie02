int[] xvals; //Array of integers representing the x-coordiantes of a series of points.
int[] yvals; //Array of integers representing the y-coordiantes of a series of points.
int numPoints; //Number points currently stored in xvals and yvals.

void setup() {
size(600, 400);
background(0);
xvals = new int[100];
yvals = new int[100];
numPoints = 0;

stroke(255);
strokeWeight(5);
}

void makeLines(int[] xs, int[] ys, int points) {
  for (int i = 0; i < points; i++) {
  xs[i] = int(random(width));
  ys[i] = int(random(height));
  numPoints++;
  }
}
  
void drawLines(int[] xs, int[] ys) {
  for (int i = 1; i < numPoints; i++) {
    line(xs[i], ys[i], xs[i-1], ys[i-1]);
  }
}

void draw() {
  background(0);
  drawLines(xvals, yvals);
}

void mousePressed() {
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}
