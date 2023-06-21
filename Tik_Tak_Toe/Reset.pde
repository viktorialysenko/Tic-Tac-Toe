void start_program() {
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      board[row][col] = EMPTY;
    }
  }

  turn = 0;
  gameDone = false;
}
