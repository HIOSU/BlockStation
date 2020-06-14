class Tetris {
  void run_tetris() {
    make_ui();
  }
  void make_ui()
  {
    fill(255);
    rect(5, 5, 130, 130, 25);
    textSize(30);
    text("Effect", 5, 170);
    text("Level", 5, 220);
    text("Score", 5, 270);
    fill(0);
    for (int i = 0; i < 20; i++) {
      rect(140, 5+(term*i), 25, 25, 10);
      rect(470, 5+(term*i), 25, 25, 10);
      if (i < 12) {
        rect(140+(term*i), 575, 25, 25, 10);
      }
    }

    image(iback, 0, 555, 50, 50);
  }
}
