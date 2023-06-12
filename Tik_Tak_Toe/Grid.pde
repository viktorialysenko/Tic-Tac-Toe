void displayGrid() {
  // display grid
  // rect(LR_MARGIN, TB_MARGIN, 3 * LINE_SPACING, 3 * LINE_SPACING);
  stroke(#000000);
  strokeWeight(5);
  for (int i = 0; i < 2; i++) {
    line(LR_MARGIN, TB_MARGIN + LINE_SPACING * (i + 1), 
      WIDTH - LR_MARGIN, TB_MARGIN + LINE_SPACING * (i + 1));
  }
  /*for (int i = 0; i < 2; i++) {
    line(LR_MARGIN + LINE_SPACING * (i + 1), TB_MARGIN, 
      LR_MARGIN + LINE_SPACING * (i + 1), HEIGHT - TB_MARGIN);
  }*/
}
