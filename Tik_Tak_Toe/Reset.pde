void start_program() {
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      board[row][col] = empty;
    }
  }

  turn = 0;
  gameDone = false;
}

void score(){
  textAlign(CENTER, CENTER); 
  textFont(gothic, 30);
  fill(Ocolor);
  String OScoreText = "O score: " + Oscore;
  text(OScoreText, 0, middleY-squareCellHeight, sideMargin, topMargin);
 /////////////////////////////////
  fill(Xcolor);
  String XScoreText = "X score: " + Xscore;
  text(XScoreText, 0, middleY-squareCellHeight*1/2, sideMargin, topMargin);
}
