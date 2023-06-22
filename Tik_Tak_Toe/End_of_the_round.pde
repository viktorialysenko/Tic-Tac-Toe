void endOfTheRound() {
  // annoucements and check for winner
  textSize(30);
  textAlign(CENTER, CENTER); 
  textFont(gothic, 48);
  if (turn == 9 || checks() != empty) { // game done
    if (checks() == O) {
       println("O wins");
      fill(black);
      text("O wins", sideMargin, 0, 3 * squareCellWidth, topMargin);
       if (!gameDone){
         Oscore++;
       }
    } else if (checks() == X) {
       println("X wins");
      fill(black);
      text("X wins", sideMargin, 0, 3 * squareCellWidth, topMargin);
     if (!gameDone){ Xscore++;}
    } else {
      text("Draw", sideMargin, 0, 3 * squareCellWidth, topMargin);
    }
    fill(#FFFFFF);
rect(restartButtonX,restartButtonY,restartButtonWidth, restartButtonHeight);
fill(black);
 text("Press to reset", restartButtonX,restartButtonY,restartButtonWidth, restartButtonHeight);
    gameDone = true;
  } else {
    if (turn % 2 == O) {
      fill(Ocolor);
      text("O's turn", sideMargin, 0, 3 * squareCellWidth, topMargin);
    }
    if (turn % 2 == X) {
      fill(Xcolor);
      text("X's turn", sideMargin, 0, 3 * squareCellWidth, topMargin);
    }
  }
}//End endOfTheRound
 void buttonPressed(){
loop();
   if (mouseX > restartButtonX && mouseX < restartButtonX +restartButtonWidth &&
    mouseY > restartButtonY && mouseY < restartButtonY + restartButtonHeight) {
     if (gameDone) {
       start_program();
  }
    }//END IF
 }//END buttonPressed
