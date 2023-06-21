int check() {
  // horizontal check
  stroke(gridColor, WIN_ALPHA);

  for (int y = 0; y < 3; y++) {
    if (board[0][y] == O && board[1][y] == O && board[2][y] == O) {
      line(horLine1X1, horLine1Y1 + (y + 0.5) * squareSize, 
        appWidth - horLine1X1, horLine1Y1 + (y + 0.5) * squareSize);
      return O;
    }
    if (board[0][y] == X && board[1][y] == X && board[2][y] == X) {
      line(horLine1X1, horLine1Y1 + (y + 0.5) * squareSize, 
        appWidth - horLine1X1, horLine1Y1 + (y + 0.5) * squareSize);
      return X;
    }
  }

  // vertical check
  for (int x = 0; x < 3; x++) {
    if (board[x][0] == O && board[x][1] == O && board[x][2] == O) {
      line(horLine1X1 + (x + 0.5) * squareSize, horLine1Y1, 
        horLine1X1 + (x + 0.5) * squareSize, appHeight - horLine1Y1);
      return O;
    }
    if (board[x][0] == X && board[x][1] == X && board[x][2] == X) {
      line(horLine1X1 + (x + 0.5) * squareSize, horLine1Y1, 
        horLine1X1 + (x + 0.5) * squareSize, appHeight - horLine1Y1);
      return X;
    }
  }

  // diagonal 1 check
  if (board[0][0] == O && board[1][1] == O && board[2][2] == O) {
    line(horLine1X1, horLine1Y1, appWidth - horLine1X1, appHeight - horLine1Y1);
    return O;
  }
  if (board[0][0] == X && board[1][1] == X && board[2][2] == X) {
    line(horLine1X1, horLine1Y1, appWidth - horLine1X1, appHeight - horLine1Y1);
    return X;
  }

  // diagonal 2 check
  if (board[0][2] == O && board[1][1] == O && board[2][0] == O) {
    line(horLine1X1, appHeight - horLine1Y1, appWidth - horLine1X1, horLine1Y1);
    return O;
  }
  if (board[0][2] == X && board[1][1] == X && board[2][0] == X) {
    line(horLine1X1, appHeight - horLine1Y1, appWidth - horLine1X1, horLine1Y1);
    return X;
  }

  return EMPTY;
}
