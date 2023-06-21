void drawOX() {
    microsoft = createFont("MicrosoftYaHeiUI-Bold", 48);
  textAlign(CENTER, CENTER); 
  textFont(microsoft, 85);
  for (int y = 0; y < 3; y++) {
    for (int x = 0; x < 3; x++) {
      if (board[x][y] == O) {
        fill(Ocolor);
       text("O", sideMargin + squareCellWidth * x, topMargin + squareCellHeight * y, 
          squareCellWidth, squareCellHeight);
      }
      if (board[x][y] == X) {
        fill(Xcolor);
        text("X", sideMargin + squareCellWidth * x, topMargin + squareCellHeight * y, 
          squareCellWidth, squareCellHeight);
      }
    }
  }
}
/////////////////////////////////////////////////////
