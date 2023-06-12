void displayGrid () {
  // display grid
   //rect(rightMargin, leftMargin, 3 * line_spacing, 3 * line_spacing);
  stroke(#000000);
  strokeWeight(5);
// for (int i = 0; i < 2; i++) {
  color(#030000);
   line(horLine1X1, horLine1Y1, horLine1X2, horLine1Y2);
   line(horLine2X1, horLine2Y1, horLine2X2, horLine2Y2);
      line(vertLine1X1, vertLine1Y1,vertLine1X2, vertLine1Y2);
   line(vertLine2X1, vertLine2Y1, vertLine2X2, vertLine2Y2);
 // }
  /*for (int i = 0; i < 2; i++) {
    line(LR_MARGIN + LINE_SPACING * (i + 1), TB_MARGIN, 
      LR_MARGIN + LINE_SPACING * (i + 1), HEIGHT - TB_MARGIN);
  }*/
}
