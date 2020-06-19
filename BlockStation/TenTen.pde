class Tentris {
  int time;
  int time1;
  int q = 0;
  int flag = 0;
  int score = 0;
  int maxscore = 0;
  int nowBlocks = 0;
  int deathCount = 0;
  int breakCount = 0;
  float nowBlockLocY = 0;
  int nowBlockIndex = 0;
  int scoreForItem = 0;

  int[] a = {0, 0, 0, 0};
  int[] breakindexX = {};
  int[] breakindexY = {};

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

  Block nowBlock = null;
  Block nextBlock = null;

  Block[] blocks;
  Block[] a1 = {null, null, null, null};

  Item item = null;

  void setting() {
    blocks = b_s.get_ten();
  }
  void run_tentris() {
    tentris();
  }
  void tentris()
  {
    if (deathCount < 3) {
      background(#CBCBCB);
      if(scoreForItem <= 1000){
        
      }
      image(loadImage("data/Image/re.png"), 645, 370, 50, 50);
      image(iback, 0, 380, 50, 50);
      fill(0);

      for (int i = 3; i>deathCount; i--) {
        image(loadImage("data/Image/he.png"), 290 - (i * 50), 370, 50, 50);
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
        nextBlock = blocks[m].rot(rot_num);
      }

      draw_array(tentenArray, 70, 65, false, -1);

      for (int i = 0; i<a.length; i++) {
        if (a1[i] != null) {
          draw_array(a1[i].getArray(), 385, a1[i].getLocation()[1], true, a1[i].getIndex());
        }
      }

      if (nextBlock !=null) {
        draw_array(nextBlock.getArray(), 545, 10, true, nextBlock.getIndex());
      }

      if (nowBlock != null) {
        draw_array(nowBlock.getArray(), nowBlock.getLocation()[0], nowBlock.getLocation()[1], true, nowBlock.getIndex());
      } 

      if (millis() - time >= 750) {
        time = millis();

        if (millis() - time1 >= 4500) {
          time1 = millis();
          a1[q%4] = nextBlock;
          nextBlock = null;
          a[q%4] = 1;
          float[] location = {385, -145};
          a1[q%4].setLocation(location);
          q++;
          nowBlocks++;
        }

        for (int i = 0; i<a.length; i++) {
          if (a[i] == 1) {
            //draw_array(a1[i].getArray(), 385, a1[i].getLocation()[1], true, a1[i].getIndex());
            //print(a[i][1]+ "->");
            nowBlockLocY += 30;
            float[] location2 = {a1[i].getLocation()[0], a1[i].getLocation()[1]+30};
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
      }
    } else {
      background(#CBCBCB);
      image(loadImage("data/Image/re.png"), 645, 370, 50, 50);
      draw_array(tentenArray, 70, 65, false, -1);
      image(iback, 0, 380, 50, 50);
      fill(0);
      text("Game OVER!", 450, 180);
      text("Last Score " + score, 450, 220);
      text("MaxScore " + maxscore, 450, 260);
    }
  }

  void draw_array(int[][] array, float x, float y, boolean isBlock, int index) {
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
    q = 0;
    score = 0;
    nowBlocks = 0;
    deathCount = 0;
    nowBlockLocY = 0;
    nowBlockIndex = 0;
    flag = 0;

    a = new int[] {0, 0, 0, 0};

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

    nowBlock = null;
    nextBlock = null;

    a1 = new Block[] {null, null, null, null};
  }

  void tenEventP() {
    for (int i = 0; i < a1.length; i++) {
      if (a1[i] != null) {
        if ((mouseX  > 380 && mouseY > a1[i].getLocation()[1]) && (mouseX < 535 && mouseY < a1[i].getLocation()[1] + 155))
        {
          nowBlockIndex = i;
          nowBlock = a1[i];
          nowBlockLocY = a1[i].getLocation()[1];
          a[i] = 0;
          a1[i] = null;
          CheckM = true;
          noCursor();
        }
      }
    }
  }

  void tenEventD() {
    if (nowBlock != null) {
      float[] boo = {mouseX-12.5, mouseY-12.5};
      nowBlock.setLocation(boo);
      //noCursor();
    }
  }

  void tenEventR() {
    if (nowBlock != null) {
      if (((70-(nowBlock.getBlockArea()[0]*30))<= mouseX) && ((365 - (nowBlock.getBlockArea()[2]*30)) >= mouseX) && ((65-(nowBlock.getBlockArea()[1]*30))<= mouseY) && ((360-(nowBlock.getBlockArea()[3]*30))>= mouseY)) {

        int[][] newArray = {};

        for (int i = 0; i < nowBlock.getBlockArea()[1]; i++) 
        {
          int[] qw = {};
          for (int j = 0; j < tentenArray[0].length + nowBlock.getBlockArea()[0] + (4 - nowBlock.getBlockArea()[2]); j++) {
            qw = (int[])append(qw, 0);
          }
          newArray = (int[][])append(newArray, qw);
        }

        for (int i = 0; i< tentenArray.length; i++) {
          int[] foo = {};
          
          for (int j = 0; j< nowBlock.getBlockArea()[0]; j++) {
            foo = (int[])append(foo, 0);
          }
          
          for (int j = 0; j< tentenArray[i].length; j++) {
            foo = (int[]) append(foo, tentenArray[i][j]);
          }
          
          for (int j = 0; j< (4-nowBlock.getBlockArea()[2]); j++) {
            foo = (int[])append(foo, 0);
          }
          
          newArray = (int[][])append(newArray, foo);
        }
        
        for (int i = 0; i < 4-nowBlock.getBlockArea()[3]; i++) 
        {
          int[] qw = {};
          for (int j = 0; j < tentenArray[0].length + nowBlock.getBlockArea()[0] + (4 - nowBlock.getBlockArea()[2]); j++) {
            qw = (int[])append(qw, 0);
          }
          newArray = (int[][])append(newArray, qw);
        }

        for (int i = 0; i<newArray.length; i++) {
          for (int j = 0; j<newArray[i].length; j++) {
            if (((70-(nowBlock.getBlockArea()[0]*30))+(30*j) <= mouseX) && ((65-(nowBlock.getBlockArea()[1]*30))+(30*i) <= mouseY) && ((97.5-(nowBlock.getBlockArea()[0]*30)+(30*j) >= mouseX) && ((92.5-(nowBlock.getBlockArea()[1]*30))+(30*i) >= mouseY))) {
              flag = 0;
              for (int z = 0; z<5; z++) {
                for (int s = 0; s<5; s++) {
                  if (newArray[z+i][s+j] != 0 && nowBlock.getArray()[z][s] != 0) {
                    flag = 1;
                    break;
                  }
                }
                if (flag == 1) {
                  break;
                }
              }
              //print(flag);
              if (flag == 0) {
                for (int z = 0; z<5; z++) {
                  for (int s = 0; s<5; s++) {
                    if (nowBlock.getArray()[z][s] == 1) {
                      newArray[z+i][s+j] = nowBlock.getArray()[z][s]*nowBlock.getIndex();
                    }
                  }
                }
              }
            }
          }
        }
        if (flag == 0) {
          for (int i = 0; i < tentenArray.length; i++) {
            for (int j = 0; j< tentenArray[i].length; j++) {
              tentenArray[i][j] = newArray[i+nowBlock.getBlockArea()[1]][j+nowBlock.getBlockArea()[0]];
            }
          }
          checkBreak();
          score += nowBlock.getBlockAmount();
          nowBlock = null;
          deathCount = 0;
        } else {
          if (nowBlockLocY > 373) {
            score -= (20*nowBlock.getBlockAmount());
            deathCount++;
            nowBlock = null;
          } else {
            float[] foo = {380, nowBlockLocY};
            nowBlock.setLocation(foo);
            a[nowBlockIndex] = 1;
            a1[nowBlockIndex] = nowBlock;
            nowBlock = null;
          }
        }
      } else {
        if (nowBlockLocY > 373) {
          score -= (20*nowBlock.getBlockAmount());
          deathCount++;
          nowBlock = null;
        } else {
          float[] foo = {380, nowBlockLocY};
          nowBlock.setLocation(foo);
          a[nowBlockIndex] = 1;
          a1[nowBlockIndex] = nowBlock;
          nowBlock = null;
        }
      }
    }

    cursor(ARROW);
  }

  void checkBreak() {
    for (int i = 0; i < tentenArray.length; i++) {
      for (int j = 0; j< tentenArray[i].length; j++) {
        if (tentenArray[i][j] == 0) {
          break;
        } else {
          if ( j == 9) {
            breakCount++;
            breakindexX = append(breakindexX, i);
          }
        }
      }
    }

    for (int i = 0; i < tentenArray.length; i++) {
      for (int j = 0; j< tentenArray[i].length; j++) {
        if (tentenArray[j][i] == 0) {
          break;
        } else {
          if ( j == 9) {
            breakCount++;
            breakindexY = append(breakindexY, i);
          }
        }
      }
    }
    for (int j : breakindexX) {
      for (int i = 0; i < tentenArray[0].length; i++) {
        tentenArray[j][i] = 0;
      }
    }

    for (int j : breakindexY) {
      for (int i = 0; i < tentenArray[0].length; i++) {
        tentenArray[i][j] = 0;
      }
    }
    if (breakCount == 6) {
      score += 210;
    } else if (breakCount == 5) {
      score += 150;
    } else if (breakCount == 4) {
      score += 100;
    } else if (breakCount == 3) {
      score += 60;
    } else if (breakCount == 2) {
      score += 30;
    } else if (breakCount == 1) {
      score += 10;
    }
    breakCount = 0;
    breakindexX = new int[] {};
    breakindexY = new int[] {};
  }
}
