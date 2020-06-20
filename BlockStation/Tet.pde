class Tetris {
  int time;
  int flag = 0;
  Block[] bk;
  Block drop_bk;
  Block next_bk = null;
  int maxscore = 0;
  int score = 0;
  int level = 1;
  int[] dropBlocksXY = {4, 0};
  int f = 0;
  int s = 1000;
  int sn = 1000;
  int limit = 3000;
  int limitUpdate = 3000;
  int droped = 0;
  int dropedBySpace = 0;
  int gameOverCount = 0;
  int[][] tet_array = {
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
    {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}};

  void run_tetris() {
    make_ui();
  }
  void make_ui()
  {
    background(#CBCBCB);
    noStroke();
    fill(255);
    rect(5, 5, 155, 155, 25);
    fill(0);
    textSize(30);
    text("Level "+ level, 5, 195);
    text("Score ", 5, 345);
    text(score, 5, 395);
    text("MaxScore", 5, 245);
    text(maxscore, 5, 295);

    iback = loadImage("data/Image/back.png");
    image(iback, 0, height-50, 50, 50);
    image(loadImage("data/Image/re.png"), 90, height-50, 50, 50);
    draw_array(tet_array, 165, 10, false, -1);
    if (gameOverCount == 0) {
      if (next_bk == null) {
        int random_t = (int)random(1, bk.length);
        int random_rot = (int)random(4);
        next_bk = bk[random_t].rot(random_rot);
      }
      if (next_bk != null) { //draw
        draw_array(next_bk.getArray(), 10, 10, true, next_bk.getIndex());
      }
      if (flag == 0) { 
        drop_bk = next_bk;
        next_bk = null;
        flag = 1;
      }


      //for int 
      if (millis() - time >= s) {
        time = millis();
        if (keyCode == DOWN) {
          droped +=1;
        }
        if (keyCode == 32) {
          dropedBySpace =0;
          keyCode = 0;
        }
        dropedBySpace += 1;
        f = 0;
        for (int i = 0; i < 5; i++) {
          for (int j = 0; j< 5; j++) {
            if (drop_bk.getArray()[i][j] == 1) {
              try {
                if (tet_array[i+dropBlocksXY[1]+1][j+dropBlocksXY[0]] == 0 && drop_bk.getArray()[i+1][j] == 0) {
                  f += 1;
                }
              } 
              catch(Exception e) {
                f += 1;
              }
            }
          }
        }

        if (f == drop_bk.blockArea[2] - drop_bk.blockArea[0] + 1) {
          for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
              //println(i, j, dropBlocksXY[1], dropBlocksXY[0]);
              if (drop_bk.getArray()[i][j] ==1) {
                tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = 0;
              }
            }
          }
          dropBlocksXY[1]++;
          for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
              //println(i, j, dropBlocksXY[1], dropBlocksXY[0]);
              if (drop_bk.getArray()[i][j] ==1) {
                tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = drop_bk.getIndex();
              }
            }
          }
        } else {
          breakBlock();
          score += droped;
          score += dropedBySpace * 2;
          s = sn;
          if (score >= limit) {
            s = (int)(s * 0.8);
            sn = (int)(sn * 0.8);
            level++;
            limit += limitUpdate;
            limitUpdate += 1000;
          }
          droped = 0;
          flag = 0;
          dropBlocksXY[1] = 0;
          dropBlocksXY[0] = 4;
          for (int i = 5; i< 8; i++) { 
            if (tet_array[5][i] != 0) {
              gameOverCount =1;
            }
          }
        }

        //if (f == 1) {
        //  print("a");
        //  flag = 0;
        //  dropBlocksXY[1] = 0;
        //  dropBlocksXY[0] = 4;
        //  dropBlocksXYEraser[0] = dropBlocksXY[0];
        //  dropBlocksXYEraser[1] = dropBlocksXY[1];
        //  f = 0;
        //}
        //if (flag == 1) {
        //  dropBlocksXYEraser[0] = dropBlocksXY[0];
        //  dropBlocksXYEraser[1] = dropBlocksXY[1];
        //  dropBlocksXY[1]++;
        //}
      }
    } else {
      textSize(50);
      text("Game Over!!", (width/2)-60, (height/2));
      textSize(38);
      if (score > maxscore) {
        maxscore = score;
      }
      text("MaxScore : " + maxscore, (width/2)-60, (height/2)+60);
    }
  }
  void tet_block() {
    bk = b_s.get_te();
  }
  void reset() {
    flag = 0;
    drop_bk = null;
    next_bk = null;
    if (score > maxscore) {
      maxscore = score;
    }
    score = 0;
    level = 1;
    dropBlocksXY = new int[]{4, 0};
    f = 0;
    s = 1000;
    sn = 1000;
    limit = 3000;
    limitUpdate = 3000;
    droped = 0;
    gameOverCount = 0;
    tet_array = new int[][] {
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1}, 
      {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}};
  }
  //void draw() {
  //  background(#CBCBCB);
  //  if (flag == 0) {
  //    tet_block();
  //    //draw_array();
  //if (millis() - time >= 100) {
  //  time = millis();
  //      if (tet_array[n+1][j] == 0) {
  //        tet_array[n][j] = 0;
  //        n += 1;
  //        tet_array[n][j] = 1;
  //      } else if (n == 0) {
  //        text("GameOver", 50, 50);
  //        flag = 1;
  //      } else {
  //        n = 0;
  //        j = 5;
  //      }
  //    }
  //  } else {
  //    //draw_array();
  //    text("GameOver", 50, 50);
  //  }
  //}

  void breakBlock() {
    int c = 0;
    int[] breakPoint = {};
    for (int i = 5; i < tet_array.length-1; i++) {
      for (int j = 1; j<tet_array[i].length; j++) {
        if (tet_array[i][j] == 0) {
          break;
        } else if (j == tet_array[i].length -1) {
          c += 1;
          breakPoint = (int[])append(breakPoint, i);
        }
      }
    }
    for (int i : breakPoint) {
      for (int j = 1; j < tet_array[i].length-1; j++) {
        tet_array[i][j] = 0;
      }
      for (int n = i; n > 2; n--) {
        for (int j = 1; j< tet_array[n].length -1; j++) {
          tet_array[n][j] = tet_array[n-1][j];
        }
      }
    }

    if (c == 1) {
      score += 100 * level;
    } else if (c == 2) {
      score += 300 * level;
    } else if (c == 3) {
      score += 500 * level;
    } else if (c == 4) {
      score += 800 * level;
    }
  }
  void draw_array(int[][] array, int x, int y, boolean isBlock, int index) {
    noStroke();
    for (int i = 0; i<array.length; i++) {
      for (int j = 0; j<array[i].length; j++) {
        if (isBlock == false) {
          if (i > 4) {
            if (array[i][j] == -1) {
              fill(0);
              rect(x+(30*j), y+(30*(i-5)), 25, 25, 10);
            } else {
              fill(b_s.get_te()[array[i][j]].getRgb()[0], b_s.get_te()[array[i][j]].getRgb()[1], b_s.get_te()[array[i][j]].getRgb()[2]);
              //print(bs.get_ten().length);
              rect(x+(30*j), y+(30*(i-5)), 25, 25, 10);
            }
          }
        } else {
          if (array[i][j]== 0) {
            noFill();
            noStroke();
          } else {
            fill(b_s.get_te()[index].getRgb()[0], b_s.get_te()[index].getRgb()[1], b_s.get_te()[index].getRgb()[2]);
            rect(x+(30*j), y+(30*i), 25, 25, 10);
          }
        }
      }
    }
  }
  void tetrisKeyEventP() {
    if (keyCode == LEFT) {
      int d = 0;
      for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
          if (drop_bk.getArray()[i][j] == 1) {
            try {
              if (tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]-1] == 0 && drop_bk.getArray()[i][j-1] == 0) {
                d += 1;
              }
            } 
            catch(Exception e) {
              d += 1;
            }
          }
        }
      }
      if (d == drop_bk.blockArea[3] - drop_bk.blockArea[1] + 1) {
        for (int i = 0; i < 5; i++) {
          for (int j = 0; j< 5; j++) {
            if (drop_bk.getArray()[i][j] == 1) {
              tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = 0;
            }
          }
        }

        dropBlocksXY[0]--;
        for (int i = 0; i < 5; i++) {
          for (int j = 0; j< 5; j++) {
            if (drop_bk.getArray()[i][j] == 1) {
              tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = drop_bk.getIndex();
            }
          }
        }
      }

      draw_array(tet_array, 165, 10, false, -1);
    } else if (keyCode == RIGHT) {
      int d = 0;
      for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
          if (drop_bk.getArray()[i][j] == 1) {
            try {
              if (tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]+1] == 0 && drop_bk.getArray()[i][j+1] == 0) {
                d += 1;
              }
            } 
            catch(Exception e) {
              d += 1;
            }
          }
        }
      }
      if (d == drop_bk.blockArea[3] - drop_bk.blockArea[1] + 1) {
        for (int i = 0; i < 5; i++) {
          for (int j = 0; j< 5; j++) {
            if (drop_bk.getArray()[i][j] == 1) {
              tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = 0;
            }
          }
        }

        dropBlocksXY[0]++;
        for (int i = 0; i < 5; i++) {
          for (int j = 0; j< 5; j++) {
            if (drop_bk.getArray()[i][j] == 1) {
              tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = drop_bk.getIndex();
            }
          }
        }
      }

      draw_array(tet_array, 165, 10, false, -1);
    } else if (keyCode == DOWN) {
      s = 100;
    } else if (keyCode == UP) {
      Block bk = drop_bk.rot(1);
      for (int i = 0; i < 5; i++) {
        for (int j = 0; j< 5; j++) {
          if (drop_bk.getArray()[i][j] == 1) {
            tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = 0;
          }
        }
      }
      int d = 0;
      for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
          if (bk.getArray()[i][j] == 1) {
            try {
              if (tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] != 0) {
                d += 1;
              }
            }
            catch(Exception e) {
              d += 1;
            }
          }
        }
      }

      if (d == 0) {
        drop_bk = drop_bk.rot(1);
        for (int i = 0; i < 5; i++) {
          for (int j = 0; j< 5; j++) {
            if (drop_bk.getArray()[i][j] == 1) {
              tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = drop_bk.getIndex();
            }
          }
        }
      } else {
        for (int i = 0; i < 5; i++) {
          for (int j = 0; j< 5; j++) {
            if (drop_bk.getArray()[i][j] == 1) {
              tet_array[i+dropBlocksXY[1]][j+dropBlocksXY[0]] = drop_bk.getIndex();
            }
          }
        }
      }
    }
  }

  void tetrisKeyEventR() {
    if (keyCode == DOWN) {
      s = sn;
      keyCode = 0;
    } else if (keyCode == 32) {
      s = 0;
    } else if (keyCode == 82)
    reset();
  }
}
