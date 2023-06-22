int checks() {
  // HORIZONTAL check
  stroke(gridColor, strokeSize);
 for (int y = 0; y < 3; y++) {
    if (board[0][y] == O && board[1][y] == O && board[2][y] == O) {
      line(sideMargin, topMargin + (y + 0.5) * squareCellHeight, 
        appWidth - sideMargin, topMargin + (y + 0.5) * squareCellHeight);
      return O;
    }
    if (board[0][y] == X && board[1][y] == X && board[2][y] == X) {
      line(sideMargin, topMargin + (y + 0.5) * squareCellHeight, 
        appWidth - sideMargin, topMargin + (y + 0.5) * squareCellHeight);
      return X;
    }
  }
  // VERTICAL check
  for (int x = 0; x < 3; x++) {
    if (board[x][0] == O && board[x][1] == O && board[x][2] == O) {
      line(sideMargin + (x + 0.5) * squareCellWidth, topMargin, 
        sideMargin + (x + 0.5) * squareCellWidth, appHeight - topMargin);
      return O;
    }
    if (board[x][0] == X && board[x][1] == X && board[x][2] == X) {
      line(sideMargin + (x + 0.5) * squareCellWidth, topMargin, 
        sideMargin + (x + 0.5) * squareCellWidth, appHeight - topMargin);
      return X;
    }
  }
  // DIAGONAL 1 check
  if (board[0][0] == O && board[1][1] == O && board[2][2] == O) {
    line(sideMargin, topMargin, appWidth - sideMargin, appHeight - topMargin);
    return O;
  }
  if (board[0][0] == X && board[1][1] == X && board[2][2] == X) {
    line(sideMargin, topMargin, appWidth - sideMargin, appHeight - topMargin);
    return X;
  }
  // DIAGONAL 2 check
  if (board[0][2] == O && board[1][1] == O && board[2][0] == O) {
    line(sideMargin, appHeight - topMargin, appWidth - sideMargin, topMargin);
    return O;
  }
  if (board[0][2] == X && board[1][1] == X && board[2][0] == X) {
    line(sideMargin, appHeight - topMargin, appWidth - sideMargin, topMargin);
    return X;
  }
  return empty;
}
