class Tetris {
  int time;
  int y = 0;
  int n = 0;
  int j = 5;
  int k = j;
  int l = n;
  int flag = 0;
  int random_t = 0;
  Block[] bk;
  Block drop_bk;
  int now_bk = 0;
  Block next_bk = null;
  int[]b = {0, 0, 0, 0};
  Block[] b1 = {null, null, null, null};
  int w = 0;
  int maxscore = 0;



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
    {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}};

  void run_tetris() {
    make_ui();
  }
  void make_ui()
  {
    noStroke();
    fill(255);
    rect(5, 5, 155, 155, 25);
    textSize(30);
    text("Effect", 5, 195);
    text("Level", 5, 245);
    text("Score", 5, 295);
    fill(0);

    draw_array(tet_array, 165, 10, false, -1);

    //if (millis() - time >= 1000) {
    //  time = millis();

    if (drop_bk == null) {
      drop_bk = bk[1];
      //drop_bk = next_bk;
      //next_bk = null;
    }
    //if (next_bk == null) {
    //  random_t = (int)random(1, bk.length);
    //  next_bk = bk[random_t];
    //  //nextBlock = blocks[m];
    //}

    if (drop_bk != null) {
      draw_array(drop_bk.getArray(), 10, 10, true, drop_bk.getIndex());
      //draw_array(next_bk.getArray(), 10, 10, true, next_bk.getIndex());
    }
    if (tet_array[n+1][j] == 0) {
      draw_array(drop_bk.getArray(), 150, 15, true, drop_bk.getIndex());
    }


    //if (now_bk<4){
    if (millis() - time >= 1000) {
      time = millis();
      b1[w%4] = drop_bk;
      next_bk = null;
      b[w%4] = 1;
      float[] location = {385, -145};
      b1[w%4].setLocation(location);
      w++;
      now_bk++;
    }

    //if (millis() - time >= 100) {
    //  time = millis();


    //}

    //if (next_bk != null) { //draw
    //  draw_array(next_bk.getArray(), 10, 10, true, next_bk.getIndex());
    //}
    //if (drop_bk != null) { //draw
    //  draw_array(drop_bk.getArray(), 200, 100, true, drop_bk.getIndex());
    //}

    //for (int i = 0; i < 20; i++) {
    //  rect(140, 5+(term*i), 25, 25, 10);
    //  rect(470, 5+(term*i), 25, 25, 10);
    //  if (i < 12) {
    //    rect(140+(term*i), 575, 25, 25, 10);
    //  }
    //}
    iback = loadImage("back.png");
    image(iback, 0, 555, 50, 50);
  }
  void tet_block() {
    bk = b_s.get_te();
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



  void draw_array(int[][] array, int x, int y, boolean isBlock, int index) {
    noStroke();
    for (int i = 0; i<array.length; i++) {
      for (int j = 0; j<array[i].length; j++) {
        if (isBlock == false) {
          if (array[i][j] == -1) {
            fill(0);
            rect(x+(30*j), y+(30*i), 25, 25, 10);
          } else {
            fill(b_s.get_te()[array[i][j]].getRgb()[0], b_s.get_te()[array[i][j]].getRgb()[1], b_s.get_te()[array[i][j]].getRgb()[2]);
            //print(bs.get_ten().length);
            rect(x+(30*j), y+(30*i), 25, 25, 10);
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
}
//void keyPressed() {
//  if (flag == 0) {
//    if (keyCode == LEFT) {
//      if (tet_array[n][j-1] == 0) {  
//        background(#CBCBCB);
//        //tet_array[n][j] = 0;
//        //j -= 1;
//        //tet_array[n][j] = 1;
//        //tet_block();
//        //draw_array();
//      }
//    }
//    if (keyCode == RIGHT) {
//      if (tet_array[n][j+1] == 0) {
//        background(#CBCBCB);
//        tet_array[n][j] = 0;
//        j += 1;
//        tet_array[n][j] = 1;
//        tetris.tet_block();
//        //draw_array();
//      }
//    }
//    if (keyCode == UP) { //rotate
//    } 
//    if (keyCode == DOWN) {
//      if (tet_array[n+1][j] == 0) {  
//        background(#CBCBCB);
//        tet_array[n][j] = 0;
//        n += 1;
//        tet_array[n][j] = 1;
//        tetris.tet_block();
//        //draw_array();
//      }
//    }
//    if (keyCode == ' ') {
//      int b = n;
//      while (tet_array[b+1][j] == 0) {
//        b++;
//      }
//      background(#CBCBCB);
//      tet_array[n][j] = 0;
//      tet_array[b][j] = 1;
//      tetris.tet_block();
//      //draw_array();
//      n = 0;
//      j = 5;
//    }
//  }
//}
//void draw_array() {
//  for (int i = 1; i< tet_array.length; i++) { //rect draw
//    for (int a = 0; a < tet_array[0].length; a++) {
//      if (tet_array[i][a] == 0) {
//      } else if (tet_array[i][a]==1) {
//        rect((a*15)+10, (i*15)+10, 10, 10);
//      }
//    }
//  }
//}
