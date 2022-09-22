void play (int cx, int cy, int playSize) {
cx = width/2; 
cy = height/2;
playSize = 100; 
fill(130,580,720);
circle(cx, cy, playSize);
fill(790,830,820);
triangle(cx-20, cy-15, cx-25, cy+10, cx+25, cy+10);}

void setup() {
size(400,400);
background(27,37,77);
play(40,180,20);
play(60, 120, 70);
play(80, 140, 80)
play(100, 160, 20)}
