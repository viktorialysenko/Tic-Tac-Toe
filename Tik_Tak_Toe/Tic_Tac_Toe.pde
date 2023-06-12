float appWidth, appHeight, smallerDimension, largerDimension;
final color backgroundColor = color(255, 255, 255);
final color Xcolor = color(255, 100, 100);
final color Ocolor = color(100, 100, 255);

//

final int WIDTH = 800;
final int HEIGHT = 800;
final int LINE_SPACING = min(WIDTH, HEIGHT) / 5;
final int TB_MARGIN = (HEIGHT - 3 * LINE_SPACING) / 2;
final int LR_MARGIN = (WIDTH - 3 * LINE_SPACING) / 2;
final int OX_SIZE = 60;
final int ANNOUNCE_SIZE = 30;
final int SCORE_SIZE = 20;
final int WIN_ALPHA = 50;

final int EMPTY = -1;
final int X = 0;
final int O = 1;


int board[][] = new int[3][3];
int turn = 0;
int Oscore = 0;
int Xscore = 0;

boolean gameDone = false;

void setup() {
   size(900, 900);
    appWidth = width;
  appHeight = height;
  display();
  start_program();
  displayGrid();
  

  //Gemoetry
  population();
}
void draw() {
}
void keyPressed() {
}
void mousePressed() {
}
