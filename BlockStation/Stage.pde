

class Stage
{
  int flag = 0;
  int clear1 = 0;
  int clear2 = 0;
  int clear3 = 0;
  int clear4 = 0;
  int clear5 = 0;

  int[][] moba1 =  {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
  };

  int[][] moba2 =  {
    {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
    {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
    {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
    {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
    {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
  };  

  int[][] moba3 = {
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
    {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}
  };      

  int[][] moba4 = {
    {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
    {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
    {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
    {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
    {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
  };                                     


  int[][] moba5 =  {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
  };  
  Block[] mob;
  Block [][] mobc1;                  
  Block [][] mobc2;
  Block [][] mobc3;
  Block [][] mobc4;
  Block [][] mobc5;

  float[] xy;

  int[][][] mobc1s;

  int[][][] mobc2s;

  int[][][] mobc3s;

  int[][][] mobc4s;

  int[][][] mobc5s;


  void stage()
  {
    mob = b_s.get_mo();
    
    mobc1s = new int[][][] {
      {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
      {{1, 1, 1}, {1, 1, 1}, {0, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
    };

    mobc5s = new int[][][] {
      {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
      {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
      {{1, 1, 0}, {0, 0, 0}, {0, 0, 0}}
    };

    mobc2s = new int[][][] {
      {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
      {{1, 1, 1}, {1, 1, 1}, {0, 0, }}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
    };

    mobc4s = new int[][][] {
      {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
      {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
      {{1, 1, 0}, {0, 0, 0}, {0, 0, 0}}
    };

    mobc3s = new int[][][] {
      {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
      {{1, 1, 1}, {1, 1, 1}, {1, 0, 0}}, 
      {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
    };


    Block[][] tes5 =  {
      {mob[2].rot(2), mob[4].copyBlock(), mob[5].copyBlock(), mob[14].rot(2), mob[7].rot(2), mob[8].copyBlock(), mob[9].copyBlock(), mob[10].copyBlock(), mob[12].rot(1)}, 
      {mob[13].rot(3), mob[15].rot(2), mob[16].rot(2), mob[18].rot(1), mob[19].copyBlock(), mob[20].rot(2), mob[21].rot(3), mob[23].rot(1), mob[24]}, 
      {mob[26].rot(3), mob[27].copyBlock()}
    };

    mobc5 = tes5;

    Block[][] tes1 = {
      {mob[2].rot(2), mob[4].rot(1), mob[5].copyBlock(), mob[6].rot(2), mob[8].rot(1), mob[10].rot(2), mob[11].rot(1), mob[12].rot(3), mob[13].rot(3)}, 
      {mob[14].rot(2), mob[18].rot(1), mob[19].rot(1), mob[22].copyBlock(), mob[24].rot(1), mob[27].copyBlock()}
    };

    mobc1 = tes1;



    Block[][] tes2 = {
      {mob[2].copyBlock(), mob[3].copyBlock(), mob[4].rot(1), mob[5].copyBlock(), mob[8].copyBlock(), mob[9].rot(3), mob[10].copyBlock(), mob[11].copyBlock(), mob[12].rot(2)}, 
      {mob[13].rot(3), mob[18].copyBlock(), mob[19].rot(1), mob[23].rot(3), mob[24].rot(3), mob[27].copyBlock()}
    };

    mobc2 = tes2;    

    Block[][] tes4 = {
      {mob[2].copyBlock(), mob[3].copyBlock(), mob[5].copyBlock(), mob[6].copyBlock(), mob[8].rot(1), mob[9].copyBlock(), mob[11].copyBlock(), mob[12].copyBlock(), mob[13].rot(2)}, 
      {mob[14].rot(2), mob[16].copyBlock(), mob[17].copyBlock(), mob[18].rot(2), mob[19].rot(1), mob[21].copyBlock(), mob[22].copyBlock(), mob[23].rot(1), mob[24].rot(3)}, 
      {mob[26].rot(1), mob[27].copyBlock()}
    };

    mobc4 = tes4;

    Block[][] tes3 = {
      {mob[1].rot(3), mob[2].rot(1), mob[5].copyBlock(), mob[8], mob[9].rot(2), mob[10].rot(3), mob[12].copyBlock(), mob[16].copyBlock(), mob[18].rot(3)}, 
      { mob[19].rot(1), mob[20].copyBlock(), mob[21].copyBlock(), mob[22].copyBlock(), mob[23].rot(3), mob[24].rot(3), mob[27].copyBlock()}
    };

    mobc3 = tes3;
    
    BlockXY(mobc1);
    BlockXY(mobc2);
    BlockXY(mobc3);
    BlockXY(mobc4);
    BlockXY(mobc5);
  }

  void Mstage()
  {
    snum = 1;
    snumX = 150;
    stx = 170;
    fill(0);
    textFont(basic, 100);
    text("B.Puzzle Stage", 180, 100);
    for (int i = 0; i < 5; i++)
    {
      fill(128);
      rect(snumX, 200, 100, 100, 10);
      fill(0);
      textFont(basic, 100);
      text(snum, stx, 290);
      snumX= snumX + 150;
      snum = snum + 1;
      stx = stx + 150;
    }
    snum = 1;
    snumX = 150;
    stx = 170;

    iback = loadImage("back.png");
    image(iback, 0, 450, 50, 50);
  }

  void Chapter1()
  {
    background(#CBCBCB);
    image(loadImage("re.png"), width - 50, height - 50, 50, 50);
    draw_array(moba1, 700, 250, false, -1);
    if (clear1 == 1) {
      fill(0);
      text("Clear~!!", width/2-421, height/2);
    }
    fill(255);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);


    if ( p < 2)
    {
      for (int b= 0; b < mobc1[p].length; b++)
      {

        if (mobc1s[p][b/3][b%3] == 1 || mobc1[p][b].isCilcked == true)
        {
          draw_array(mobc1[p][b].getArray(), mobc1[p][b].getLocation()[0], mobc1[p][b].getLocation()[1], true, mobc1[p][b].getIndex());
        }
      }
    }

    textFont(basic, 50);
    text("Stage.1", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
  }

  void Chapter2()
  {

    background(#CBCBCB);
    image(loadImage("re.png"), width - 50, height - 50, 50, 50);
    draw_array(moba2, 650, 150, false, -1);
    if (clear2 == 1) {
      fill(0);
      text("Clear~!!", width/2-421, height/2);
    }
    fill(255);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);

    if (p < 2)
    {
      for (int b= 0; b < mobc2[p].length; b++)
      {
        if (mobc2s[p][b/3][b%3] == 1 || mobc2[p][b].isCilcked == true)
        {
          draw_array(mobc2[p][b].getArray(), mobc2[p][b].getLocation()[0], mobc2[p][b].getLocation()[1], true, mobc2[p][b].getIndex());
        }
      }
    }

    textFont(basic, 50);
    text("Stage.2", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
  }

  void Chapter3()
  {
    background(#CBCBCB);
    image(loadImage("re.png"), width - 50, height - 50, 50, 50);
    draw_array(moba3, 700, 150, false, -1);
    if (clear3 == 1) {
      fill(0);
      text("Clear~!!", width/2-421, height/2);
    }
    fill(255);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);
    if ( p < 2)
    {
      for (int b= 0; b < mobc3[p].length; b++)
      {
        if (mobc3s[p][b/3][b%3] == 1 || mobc3[p][b].isCilcked == true)
        {
          draw_array(mobc3[p][b].getArray(), mobc3[p][b].getLocation()[0], mobc3[p][b].getLocation()[1], true, mobc3[p][b].getIndex());
        }
      }
    }

    textFont(basic, 50);
    text("Stage.3", 400, 70);

    image(iback, 0, 650, 50, 50);
  }

  void Chapter4()
  {

    background(#CBCBCB);
    image(loadImage("re.png"), width - 50, height - 50, 50, 50);
    draw_array(moba4, 700, 150, false, -1);
    if (clear4 == 1) {
      fill(0);
      text("Clear~!!", width/2-421, height/2);
    }
    fill(255);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);
    for (int b= 0; b < mobc4[p].length; b++)
    {
      if (mobc4s[p][b/3][b%3] == 1 || mobc4[p][b].isCilcked == true)
      {
        draw_array(mobc4[p][b].getArray(), mobc4[p][b].getLocation()[0], mobc4[p][b].getLocation()[1], true, mobc4[p][b].getIndex());
      }
    }

    textFont(basic, 50);
    text("Stage.4", 400, 70);

    image(iback, 0, 650, 50, 50);
  }

  void Chapter5()
  {
    background(#CBCBCB);
    image(loadImage("re.png"), width - 50, height - 50, 50, 50);
    draw_array(moba5, 800, 150, false, -1);
    if (clear5 == 1) {
      fill(0);
      text("Clear~!!", width/2-421, height/2);
    }
    fill(255);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);

    for (int b= 0; b < mobc5[p].length; b++)
    {
      if (mobc5s[p][b/3][b%3] == 1 || mobc5[p][b].isCilcked == true)
      {
        draw_array(mobc5[p][b].getArray(), mobc5[p][b].getLocation()[0], mobc5[p][b].getLocation()[1], true, mobc5[p][b].getIndex());
      }
    }
    textFont(basic, 50);
    text("Stage.5", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
  }

  void draw_array(int[][] array, float x, float y, boolean isBlock, int index) {
    noStroke();
    for (int i = 0; i<array.length; i++) {
      for (int j = 0; j<array[i].length; j++) {
        if (isBlock == false) {
          if (array[i][j] == -1)
          {
            noFill();
            noStroke();
          } else
          {
            fill(b_s.get_mo()[array[i][j]].getRgb()[0], b_s.get_mo()[array[i][j]].getRgb()[1], b_s.get_mo()[array[i][j]].getRgb()[2]);
            rect(x+(30*j), y+(30*i), 25, 25, 10);
          }
        } else {
          if (array[i][j]== 0) {
            noFill();
            noStroke();
          } else {
            fill(b_s.get_mo()[index].getRgb()[0], b_s.get_mo()[index].getRgb()[1], b_s.get_mo()[index].getRgb()[2]);
            rect(x+(30*j), y+(30*i), 25, 25, 10);
          }
        }
      }
    }
  }
  void BlockXY(Block[][] block)
  {
    for (int i = 0; i < block.length; i++)
    {

      for (int b= 0; b < block[i].length; b++)
      {
        xy = new float[] {155*(b%3), 110+(155*((float)(b/3)))};
        block[i][b].setLocation(xy);
      }
    }
  }
  boolean gameClear(int[][] array) {
    for (int[] i : array) {
      for (int j : i) {
        if (j == 0) {
          return false;
        }
      }
    }
    return true;
  }
  void reset() {
    flag = 0;
    if (Screencount.equals("stage1")) {
      moba1 = new int[][] {
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
      };

      mobc1s = new int[][][] {
        {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
        {{1, 1, 1}, {1, 1, 1}, {0, 0, 0}}, 
        {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
      };

      Block[][] tes1 = {
        {mob[2].rot(2), mob[4].rot(1), mob[5].copyBlock(), mob[6].rot(2), mob[8].rot(1), mob[10].rot(2), mob[11].rot(1), mob[12].rot(3), mob[13].rot(3)}, 
        {mob[14].rot(2), mob[18].rot(1), mob[19].rot(1), mob[22].copyBlock(), mob[24].rot(1), mob[27].copyBlock()}
      };

      mobc1 = tes1;
      BlockXY(mobc1);
      clear1 = 0;
    }
    if (Screencount.equals("stage2")) {
      moba2 = new int[][] {
        {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
        {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
        {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
        {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
        {0, 0, 0, 0, 0, -1, -1, -1, -1, -1}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
      };
      mobc2s = new int[][][] {
        {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
        {{1, 1, 1}, {1, 1, 1}, {0, 0, }}, 
        {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
      };

      Block[][] tes2 = {
        {mob[2].copyBlock(), mob[3].copyBlock(), mob[4].rot(1), mob[5].copyBlock(), mob[8].copyBlock(), mob[9].rot(3), mob[10].copyBlock(), mob[11].copyBlock(), mob[12].rot(2)}, 
        {mob[13].rot(3), mob[18].copyBlock(), mob[19].rot(1), mob[23].rot(3), mob[24].rot(3), mob[27].copyBlock()}
      };

      mobc2 = tes2;
      BlockXY(mobc2);
      clear2 = 0;
    }
    if (Screencount.equals("stage3")) {
      moba3 = new int[][] {
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}, 
        {-1, -1, -1, -1, 0, 0, 0, 0, -1, -1, -1, -1}
      };

      mobc3s = new int[][][] {
        {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
        {{1, 1, 1}, {1, 1, 1}, {1, 0, 0}}, 
        {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}
      };
      
      Block[][] tes3 = {
        {mob[1].rot(3), mob[2].rot(1), mob[5].copyBlock(), mob[8], mob[9].rot(2), mob[10].rot(3), mob[12].copyBlock(), mob[16].copyBlock(), mob[18].rot(3)}, 
        { mob[19].rot(1), mob[20].copyBlock(), mob[21].copyBlock(), mob[22].copyBlock(), mob[23].rot(3), mob[24].rot(3), mob[27].copyBlock()}
      };

      mobc3 = tes3;
      BlockXY(mobc3);
      clear3 = 0;
    }
    if (Screencount.equals("stage4")) {
      moba4 = new int[][] {
        {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
        {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
        {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
        {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
        {0, 0, 0, 0, -1, -1, -1, -1, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
      };
      mobc4s = new int[][][] {
        {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
        {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
        {{1, 1, 0}, {0, 0, 0}, {0, 0, 0}}
      };

      Block[][] tes4 = {
        {mob[2].copyBlock(), mob[3].copyBlock(), mob[5].copyBlock(), mob[6].copyBlock(), mob[8].rot(1), mob[9].copyBlock(), mob[11].copyBlock(), mob[12].copyBlock(), mob[13].rot(2)}, 
        {mob[14].rot(2), mob[16].copyBlock(), mob[17].copyBlock(), mob[18].rot(2), mob[19].rot(1), mob[21].copyBlock(), mob[22].copyBlock(), mob[23].rot(1), mob[24].rot(3)}, 
        {mob[26].rot(1), mob[27].copyBlock()}
      };

      mobc4 = tes4;
      BlockXY(mobc4);
      clear4 = 0;
    }

    if (Screencount.equals("stage5")) {
      moba5 = new int[][] {
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
      };

      mobc5s = new int[][][] {
        {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
        {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
        {{1, 1, 0}, {0, 0, 0}, {0, 0, 0}}
      };

      Block[][] tes5 =  {
        {mob[2].rot(2), mob[4].copyBlock(), mob[5].copyBlock(), mob[14].rot(2), mob[7].rot(2), mob[8].copyBlock(), mob[9].copyBlock(), mob[10].copyBlock(), mob[12].rot(1)}, 
        {mob[13].rot(3), mob[15].rot(2), mob[16].rot(2), mob[18].rot(1), mob[19].copyBlock(), mob[20].rot(2), mob[21].rot(3), mob[23].rot(1), mob[24]}, 
        {mob[26].rot(3), mob[27].copyBlock()}
      };

      mobc5 = tes5;
      BlockXY(mobc5);
      clear5 = 0;
    }
  }
}
