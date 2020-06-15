class Tentris {
  int maxscore = 0;
  int score = 100;
  int time;
  int time1;
  int deathCount = 0;
  Block nextBlock = null;
  //Item item = null;
  int[] a = {0, 0, 0, 0};
  Block[] a1 = {null, null, null, null};
  int nowBlocks = 0;
  int[][] tentenArray = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}};  
  Block[] blocks;
  int q = 0;


  void setting() {
    blocks = b_s.get_ten();
  }
  void run_tentris() {
    tentris_ui();
  }
  void tentris_ui()
  {
    if (deathCount < 3) {
      if (millis() - time >= 1000) {
        time = millis();
        println(time);
        background(#CBCBCB);
        image(loadImage("re.png"), 645, 370, 50, 50);
        image(iback, 0, 380, 50, 50);
        fill(0);
        for (int i = 3; i>deathCount; i--) {
          image(loadImage("he.png"), 290 - (i * 50), 370, 50, 50);
        }
        text("MaxScore. "+maxscore, 70, 30);
        text("Score. "+score, 70, 60);
        fill(255);
        stroke(0);
        strokeWeight(1);
        rect(540, 5, 155, 155, 25);
        rect(540, 180, 90, 90, 25);

        stroke(255, 255, 000);
        strokeWeight(9);
        line(385, 373, 530, 373);
        if (nextBlock == null) {
          int m = (int)random(1, blocks.length);
          int rot_num = (int)random(3);
          //int rot_num = 3;
          nextBlock = blocks[m].rot(rot_num);
          //nextBlock = blocks[m];
        }
        draw_array(nextBlock.getArray(), 545, 10, true, nextBlock.getIndex());
        //if (nowBlocks<4){
        if (millis() - time1 >= 6000) {
          time1 = millis();
          a1[q%4] = nextBlock;
          nextBlock = null;
          a[q%4] = 1;
          int[] location = {385, -145};
          a1[q%4].setLocation(location);
          q++;
          nowBlocks++;
        }
        //} else {
        //  if (nowBlocks == 0) {
        //    a1[0] = nextBlock;
        //    nextBlock = null;
        //    a[0][0] = 1;
        //    a[0][1] = -150;
        //    nowBlocks++;
        //  }
        //}
        //a[0][1] = -150;
        //nowBlocks++;}
        for (int i = 0; i<a.length; i++) {
          if (a[i] == 1) {
            draw_array(a1[i].getArray(), 385, a1[i].getLocation()[1], true, a1[i].getIndex());
            //print(a[i][1]+ "->");
            int[] location2 = {a1[i].getLocation()[0], a1[i].getLocation()[1]+30};
            a1[i].setLocation(location2);
            if (a1[i].getLocation()[1] + ((a1[i].blockArea[3]+1)*30) > 373) {
              score -= (20*a1[i].getBlockAmount());
              a[i] = 0;
              a1[i].getLocation()[1] = -150;
              deathCount++;
              a1[i] = null;
            }
          }
        }


        //}else if (nowBlocks < 4 && a[0][0] == 1){
        //  draw_array(nextBlock.getArray(),385,-150,true,nextBlock.getIndex());
        //  a[0][1] += 30;
        //}

        draw_array(tentenArray, 70, 65, false, -1);
        //for (int i = 0; i<10; i++){
        //  for(int j = 0; j<10; j++){
        //    rect(tenx + 5, teny, 25, 25, 10);
        //    tenx = tenx + 30;
        //    }
        //   tenx = 10;
        //   teny = teny + 30;
        //}
      }
    } else {
      background(#CBCBCB);
      image(loadImage("re.png"), 645, 370, 50, 50);
      draw_array(tentenArray, 70, 65, false, -1);
      image(iback, 0, 380, 50, 50);
      fill(0);
      text("Game OVER!", 450, 180);
      text("Last Score " + score, 450, 220);
      text("MaxScore " + maxscore, 450, 260);
    }
  }

  void draw_array(int[][] array, int x, int y, boolean isBlock, int index) {
    noStroke();
    for (int i = 0; i<array.length; i++) {
      for (int j = 0; j<array[i].length; j++) {
        if (isBlock == false) {
          fill(b_s.get_ten()[array[i][j]].getRgb()[0], b_s.get_ten()[array[i][j]].getRgb()[1], b_s.get_ten()[array[i][j]].getRgb()[2]);
          //print(bs.get_ten().length);
          rect(x+(30*j), y+(30*i), 25, 25, 10);
        } else {
          if (array[i][j]== 0) {
            noFill();
            noStroke();
          } else {
            fill(b_s.get_ten()[index].getRgb()[0], b_s.get_ten()[index].getRgb()[1], b_s.get_ten()[index].getRgb()[2]);
            rect(x+(30*j), y+(30*i), 25, 25, 10);
          }
        }
      }
    }
  }
  void reset() {
    if (maxscore < score) {
      maxscore = score;
    }
    score = 0;
    nextBlock = null;
    deathCount = 0;
    a = new int[] {0, 0, 0, 0};
    a1 = new Block[] {null, null, null, null};
    nowBlocks = 0;
    tentenArray = new int[][] {
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}};  
    q = 0;
  }
  void tenEventP() {
    for (int i = 0; i < a1.length; i++) {
      if (a1[i] != null) {
        if ((mouseX  > 380 && mouseY > a1[i].getLocation()[1]) && (mouseX < 535 && mouseY < a1[i].getLocation()[1] + 155))
        {
          a1[i].setIsCilcked(true);
          a[i] = 0;
        }
      }
    }
  }
  void tenEventD() {
  }
  void tenEventR() {
  }
}
