void start_program() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      board[i][j] = EMPTY;
    }
  }

  turn = 0;
  gameDone = false;
}
