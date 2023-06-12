float smallerDimension, largerDimension;
int appWidth, appHeight;
final color backgroundColor = color(255, 255, 255);
final color Xcolor = color(255, 100, 100);
final color Ocolor = color(100, 100, 255);
//
final int Xsize = 60;
final int ANNOUNCE_SIZE = 30;
final int SCORE_SIZE = 20;
final int WIN_ALPHA = 50;
//
final int EMPTY = -1;
final int X = 0;
final int O = 1;

float scaleWidth, scaleHeight, middleX, middleY;
float horLine1X1, horLine1Y1, horLine1X2, horLine1Y2, lineHeight, lineWidth;
float horLine2X1, horLine2Y1, horLine2X2, horLine2Y2;
float vertLine1X1, vertLine1Y1,vertLine1X2, vertLine1Y2, vertLine2X1, vertLine2Y1, vertLine2X2, vertLine2Y2;

int board[][] = new int[3][3];
int turn = 0;
int Oscore = 0;
int Xscore = 0;

boolean gameDone = false;

void setup() {
     size(1000, 800);
  appWidth = width;
   appHeight = height;
   population();
   
  display();
  start_program();
  displayGrid();
 
}
void draw() {
}
void keyPressed() {
}
void mousePressed() {
}
