float smallerDimension, largerDimension;
float appWidthFloat, appHeightFloat;
int appWidth, appHeight;
color backgroundColor = #FFFFFC, black=#000000, XWonColor=#ED9090, OWonColor=#ADA8F5 ;
final color Xcolor =color(155,11,11);
final color Ocolor = color(22,11,155);
final color gridColor=#0D0606;
//
color targetColor=0;
color currentColor=0;
float amount=0;
//
int squareCellWidth, squareCellHeight, topMargin, sideMargin;
final int Xsize = 60;
final int strokeSize = 55;
//
PFont microsoft,gothic;

final int empty = -1;
final int X = 0;
final int O = 1;

float scaleWidth, scaleHeight, middleX, middleY;
float horLine1X1, horLine1Y1, horLine1X2, horLine1Y2, lineHeight, lineWidth;
float horLine2X1, horLine2Y1, horLine2X2, horLine2Y2;
float vertLine1X1, vertLine1Y1,vertLine1X2, vertLine1Y2, vertLine2X1, vertLine2Y1, vertLine2X2, vertLine2Y2;
float squareWidth, squareHeight;
int gridStartX,gridStartY, squareSize;
float restartButtonX,restartButtonY,restartButtonWidth, restartButtonHeight;


int board[][] = new int[3][3];
int turn = 0;
int Oscore = 0;
int Xscore = 0;

boolean gameDone = false;

void setup() {
     size(1000, 800);
      gothic = createFont("Jokerman", 48);
  appWidth = width;
   appHeight = height;
   population();
   display();
  start_program();
  displayGrid();
 
}
void draw() { 
 if (random(1)<0.03) {
    currentColor=lerpColor(currentColor, targetColor, amount);
    targetColor=color(random(200), random(50), random(200));
    amount=0;
  }

  if (amount<1) {
    amount+=0.01;
  }
  background(lerpColor(currentColor, targetColor, amount));
  displayGrid();
  drawOX();
 score();
  checks();
  endOfTheRound();
  if (gameDone) {
    noLoop();
  }
}
void keyPressed() {
   loop();
  if (gameDone) {
    if (key == 'r' || key == 'R') {
      start_program();
    }
  }
  
}//End KeyPressed
void mousePressed() {
    // print(mouseX, mouseY);
   if (mouseX > sideMargin && mouseX < appWidth - sideMargin &&
    mouseY > topMargin && mouseY < appHeight - topMargin) {
    int ix = (mouseX - sideMargin) / squareCellWidth;
    int iy = (mouseY - topMargin) / squareCellHeight; 

    if (board[ix][iy] == empty) {
      if (turn % 2 == O) {
        board[ix][iy] = O;
      }
      if (turn % 2 == X) {
        board[ix][iy] = X;
      }

      turn += 1;
    }
  }
  ///////restart
    loop();
  if (mouseX > restartButtonX && mouseX < restartButtonX +restartButtonWidth &&
    mouseY > restartButtonY && mouseY < restartButtonY + restartButtonHeight) {
     if (gameDone) {
       start_program();
  }
    }//END IF
}//End MousePressed
