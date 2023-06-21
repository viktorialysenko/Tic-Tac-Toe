void drawOX() {
  textSize(60);
  for (int y = 0; y < 3; y++) {
    for (int x = 0; x < 3; x++) {
      if (board[x][y] == O) {
        fill(Ocolor);
        text("O", horLine1X1 + squareSize * x, horLine1Y1 + squareSize * y, 
          squareWidth, squareHeight);
      }
      if (board[x][y] == X) {
        fill(Xcolor);
        text("X", horLine1X1 + squareSize * x, horLine1Y1 + squareSize * y, 
          squareWidth, squareHeight);
      }
    }
  }
}
/////////////////////////////////////////////////////
void XO() {
  // annoucements and check for winner
  textSize(ANNOUNCE_SIZE);
  if (turn == 9 || check() != EMPTY) { // game done
    if (check() == O) {
      // println("O wins");
      fill(Ocolor);
      text("O wins", horLine1X1, 0, 3 * squareSize, horLine1Y1);
      Oscore++;
    } else if (check() == X) {
      // println("X wins");
      fill(Xcolor);
      text("X wins", horLine1X1, 0, 3 * squareSize, horLine1Y1);
      Xscore++;
    } else {
      text("Draw", horLine1X1, 0, 3 * squareSize, horLine1Y1);
    }
    text("Press R to reset, Press Esc to exit", horLine1X1 / 2, appHeight - horLine1Y1, 
      3 * squareSize + horLine1X1, horLine1Y1);

    gameDone = true;
  } else {
    if (turn % 2 == O) {
      fill(Ocolor);
      text("O's turn", horLine1X1, 0, 3 * squareSize, horLine1Y1);
    }
    if (turn % 2 == X) {
      fill(Xcolor);
      text("X's turn", horLine1X1, 0, 3 * squareSize, horLine1Y1);
    }
  }
}
