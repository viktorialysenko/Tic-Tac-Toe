void drawOX() {
  textSize(60);
  for (int y = 0; y < 3; y++) {
    for (int x = 0; x < 3; x++) {
      if (board[x][y] == O) {
        fill(Ocolor);
        text("O", horLine1X1 + lineWidth * x, horLine1Y1 + lineHeight * y, 
          squareWidth, squareHeight);
      }
      if (board[x][y] == X) {
        fill(Xcolor);
        text("X", horLine1X1 + lineWidth * x, horLine1Y1 + lineHeight * y, 
          squareWidth, squareHeight);
      }
    }
  }
}
