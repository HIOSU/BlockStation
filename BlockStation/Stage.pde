

class Stage
{

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
  
  int[] xy;
  
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

    //m = (int)random(mob.length);
    Block[][] tes5 =  {
      {mob[2].rot(2), mob[4].copyBlock(),mob[5].copyBlock(),mob[6].copyBlock(),mob[7].rot(2), mob[8].copyBlock(),mob[9].copyBlock(),mob[10].copyBlock(),mob[12].rot(1)}, 
      {mob[13].rot(3), mob[15].rot(2), mob[16].rot(2), mob[18].rot(1), mob[19].copyBlock(),mob[20].rot(2), mob[21].rot(3), mob[23].rot(1), mob[24]}, 
      {mob[26].rot(3), mob[27].copyBlock()}
      };

    mobc5 = tes5;

    Block[][] tes1 = {
      {mob[2].rot(2), mob[3].rot(3), mob[5].copyBlock(),mob[6].copyBlock(),mob[8].copyBlock(),mob[11].rot(1), mob[12].copyBlock(),mob[13].rot(2), mob[14].rot(2)}, 
      {mob[17].copyBlock(),mob[18].rot(1), mob[19].rot(1), mob[20].copyBlock(),mob[22].copyBlock(),mob[27].copyBlock()}
      };

    mobc1 = tes1;



    Block[][] tes2 = {
      {mob[2].copyBlock(),mob[3].copyBlock(),mob[4].rot(1), mob[5].copyBlock(),mob[8].copyBlock(),mob[9].rot(3), mob[10].copyBlock(),mob[11].copyBlock(),mob[12].rot(2)}, 
      {mob[13].rot(3), mob[18].copyBlock(),mob[19].rot(1), mob[23].rot(3), mob[24].rot(3), mob[27].copyBlock()}
      };

    mobc2 = tes2;    

    Block[][] tes4 = {
      {mob[2].copyBlock(),mob[3].copyBlock(),mob[5].copyBlock(),mob[6].copyBlock(),mob[8].rot(1), mob[9].copyBlock(),mob[11].copyBlock(),mob[12].copyBlock(),mob[13].rot(2)}, 
      {mob[14].rot(2), mob[16].copyBlock(),mob[17].copyBlock(),mob[18].rot(2), mob[19].rot(1), mob[21].copyBlock(),mob[22].copyBlock(),mob[23].rot(1), mob[24].rot(3)}, 
      {mob[26].rot(1), mob[27].copyBlock()}
      };

    mobc4 = tes4;

    Block[][] tes3 = {
      {mob[1].copyBlock(),mob[2].rot(3), mob[3].copyBlock(),mob[7].rot(2), mob[8].rot(1), mob[9].copyBlock(),mob[11].rot(2), mob[13].rot(1), mob[15].rot(3)}, 
      {mob[18].rot(2), mob[20].copyBlock(),mob[21].copyBlock(),mob[22].rot(2), mob[23].rot(1), mob[26].copyBlock(),mob[27].copyBlock()}
      };

    mobc3 = tes3;
    //for (int i = 0; i < mobc1.length; i++)
    //{
    
    //  for (int b= 0; b < mobc1[i].length; b++)
    //    {
    //      xy = new int[] {155*(b%3), 110+(135*((int)(b/3)))};
    //      mobc1[i][b].setIocation(xy);
        
    //  }
    //}
    BlockXY(mobc1);
    BlockXY(mobc2);
    BlockXY(mobc3);
    BlockXY(mobc4);
    BlockXY(mobc5);
    

    
    //for (int[] i : mob[m].getArray())
    //{
    //  for (int j : i)
    //  {
    //    print(j);
    //  }

    //}
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
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);


    if ( p < 2)
    {
      for (int b= 0; b < mobc1[p].length; b++)
      {
        

        //for (int z =0; z < mobc1s.length; z++)
        //{
        //for (int x = 0; x < mobc1s[p].length; x++)
        //{
        //            for (int c = 0; c < mobc1s[b%2].length; c++)
        //            {
        //if(mobc1[p][b].isCilcked == true)
        //{
        //  //print(stage.getMobc1()[p][b].getLocation()[0] + "," +  stage.getMobc1()[p][b].getLocation()[1]);
        //  draw_array(mobc1[p][b].getArray(), mobc1[p][b].getLocation()[0], mobc1[p][b].getLocation()[1], true, mobc1[p][b].getIndex());
        //}
        if (mobc1s[p][b/3][b%3] == 1 || mobc1[p][b].isCilcked == true)
        {
          //print(mobc1s[p][x][c]);
          draw_array(mobc1[p][b].getArray(), mobc1[p][b].getLocation()[0], mobc1[p][b].getLocation()[1], true, mobc1[p][b].getIndex());
        }
        // }
        //}
        //}

        //for (int i = 0; i< mobc1[p][b].getArray().length; i++) 
        //{ //rect draw
        //  for (int j = 0; j < mobc1[p][b].getArray()[0].length; j++)
        //  {
        //    if (mobc1[p][b].getArray()[i][j] ==1)
        //    {
        //      fill(mobc1[p][b].getRgb()[0], mobc1[p][b].getRgb()[1], mobc1[p][b].getRgb()[2]);
        //      rect((j*30)+(155*(b%3)), (i*30)+110+(135*((int)(b/3))), 25, 25, 10);
        //    }
        //  }
        //}
      }
    }

    //stx = 500;
    //sy = 150;
    textFont(basic, 50);
    text("Stage.1", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
    //for (int i = 0; i < 5; i++)
    //{
    //  for (int j = 0; j < 15; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 500;
    //  sy = sy + 30;
    //}
    draw_array(moba1, 700, 250, false, -1);
  }
  void Chapter2()
  {

    background(#CBCBCB);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);

    if (p < 2)
    {
      for (int b= 0; b < mobc2[p].length; b++)
      {
        if (mobc2s[p][b/3][b%3] == 1 || mobc2[p][b].isCilcked == true)
        {
          //print(mobc1s[p][x][c]);
          draw_array(mobc2[p][b].getArray(), mobc2[p][b].getLocation()[0], mobc2[p][b].getLocation()[1], true, mobc2[p][b].getIndex());
        }
      }
    }
    stx = 650;
    sy = 100;
    textFont(basic, 50);
    text("Stage.2", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
    //for (int i = 0; i < 5; i++)
    //{
    //  for (int j = 0; j < 5; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 650;
    //  sy = sy + 30;
    //}
    //for (int i = 0; i < 5; i++)
    //{
    //  for (int j = 0; j < 10; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 650;
    //  sy = sy + 30;
    //}
    draw_array(moba2, 650, 150, false, -1);
  }
  void Chapter3()
  {
    background(#CBCBCB);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);
    if ( p < 2)
    {
      for (int b= 0; b < mobc3[p].length; b++)
      {
        if (mobc3s[p][b/3][b%3] == 1 || mobc3[p][b].isCilcked == true)
        {
          //print(mobc1s[p][x][c]);
          draw_array(mobc3[p][b].getArray(), mobc3[p][b].getLocation()[0], mobc3[p][b].getLocation()[1], true, mobc3[p][b].getIndex());
        }
      }
    }
    stx = 700;
    sy = 100;
    textFont(basic, 50);
    text("Stage.3", 400, 70);

    image(iback, 0, 650, 50, 50);
    //for (int i = 0; i < 4; i++)
    //{
    //  for (int j = 0; j < 4; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 700;
    //  sy = sy + 30;
    //}
    //stx = 580;
    //for (int i = 0; i < 4; i++)
    //{
    //  for (int j = 0; j < 12; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 580;
    //  sy = sy + 30;
    //}
    //stx = 700;
    //for (int i = 0; i < 4; i++)
    //{
    //  for (int j = 0; j < 4; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 700;
    //  sy = sy + 30;
    //}
    draw_array(moba3, 700, 150, false, -1);
  }
  void Chapter4()
  {

    background(#CBCBCB);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);
    for (int b= 0; b < mobc4[p].length; b++)
    {
     if (mobc4s[p][b/3][b%3] == 1 || mobc4[p][b].isCilcked == true)
        {
          //print(mobc1s[p][x][c]);
          draw_array(mobc4[p][b].getArray(), mobc4[p][b].getLocation()[0], mobc4[p][b].getLocation()[1], true, mobc4[p][b].getIndex());
        }
    }

    stx = 500;
    sy = 100;
    textFont(basic, 50);
    text("Stage.4", 400, 70);

    image(iback, 0, 650, 50, 50);
    //for (int i = 0; i < 5; i++)
    //{
    //  for (int j = 0; j < 4; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 500;
    //  sy = sy + 30;
    //}
    //stx = 740;
    //sy = 100;
    //for (int i = 0; i < 5; i++)
    //{
    //  for (int j = 0; j < 4; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 740;
    //  sy = sy + 30;
    //}
    //stx = 500;
    //for (int i = 0; i < 5; i++)
    //{
    //  for (int j = 0; j < 12; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 500;
    //  sy = sy + 30;
    //}
    draw_array(moba4, 700, 150, false, -1);
  }
  void Chapter5()
  {
    background(#CBCBCB);
    rect (150*3, (150*3)+110, 20, 20);
    rect (10, (150*3)+110, 20, 20);

    for (int b= 0; b < mobc5[p].length; b++)
    {
      if (mobc5s[p][b/3][b%3] == 1 || mobc5[p][b].isCilcked == true)
        {
          //print(mobc1s[p][x][c]);
          draw_array(mobc5[p][b].getArray(), mobc5[p][b].getLocation()[0], mobc5[p][b].getLocation()[1], true, mobc5[p][b].getIndex());
        }
    }


    //for (int i = 0; i< mob[m].getArray().length; i++) 
    //{ //rect draw
    //  for (int j = 0; j < mob[m].getArray()[0].length; j++)
    //  {
    //    if (mob[m].getArray()[i][j] == 0) 
    //    {
    //    }
    //    else if (mob[m].getArray()[i][j] ==1)
    //    {
    //      rect((j*30), (i*30)+100, 25, 25,10);
    //    }
    //  }
    //}


    //for (int[] i : mob[m].getArray())
    //{
    //  for (int j : i)
    //  {
    //    print(j);
    //  }
    //}

    stx = 800;
    sy = 220;
    textFont(basic, 50);
    text("Stage.5", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
    //for (int i = 0; i < 10; i++)
    //{
    //  for (int j = 0; j < 10; j++)
    //  {
    //    fill(255);
    //    rect(stx, sy, 25, 25, 10);
    //    stx = stx + 30;
    //  }
    //  stx = 800;
    //  sy = sy + 30;
    //}
    draw_array(moba5, 800, 150, false, -1);
  }
  void draw_array(int[][] array, int x, int y, boolean isBlock, int index) {
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
            //print(bs.get_ten().length);
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
          xy = new int[] {155*(b%3), 110+(135*((int)(b/3)))};
          block[i][b].setLocation(xy);
        
        }
      }
    }
  public int[][][] getMobc5s() 
  {
    return mobc5s;
  }
  public void setMobc5s(int[][][] mobc5s) 
  {
    this.mobc5s = mobc5s;
  }
  public int[][][] getMobc1s() {
    return mobc1s;
  }
  public void setMobc1s(int[][][] mobc1s) 
  {
    this.mobc1s = mobc1s;
  }
  public int[][][] getMobc2s() {
    return mobc2s;
  }
  public void setMobc2s(int[][][] mobc2s) 
  {
    this.mobc2s = mobc2s;
  }
  public int[][][] getMobc4s()
  {
    return mobc4s;
  }
  public void setMobc4s(int[][][] mobc4s)
  {
    this.mobc4s = mobc4s;
  }
  public int[][][] getMobc3s()
  {
    return mobc3s;
  }
  public void setMobc3s(int[][][] mobc3s)
  {
    this.mobc3s = mobc3s;
  }
  public int[][] getMoba1()
  {
    return moba1;
  }
  public void setMoba1(int[][] moba1)
  {
    this.moba1 = moba1;
  }
  public int[][] getMoba2()
  {
    return moba2;
  }
  public void setMoba2(int[][] moba2) 
  {
    this.moba2 = moba2;
  }
  public int[][] getMoba3()
  {
    return moba3;
  }
  
  public void setMoba3(int[][] moba3) 
  {
    this.moba3 = moba3;
  }
  public int[][] getMoba4()
  {
    return moba4;
  }
  public void setMoba4(int[][] moba4)
  {
    this.moba4 = moba4;
  }
  public int[][] getMoba5()
  {
    return moba5;
  }
  public void setMoba5(int[][] moba5) 
  {
    this.moba5 = moba5;
  }
  public Block[] getMob() 
  {
    return mob;
  }
  public void setMob(Block[] mob)
  {
    this.mob = mob;
  }
  public Block[][] getMobc1()
  {
    return mobc1;
  }
  public void setMobc1(Block[][] mobc1) 
  {
    this.mobc1 = mobc1;
  }
  public Block[][] getMobc2()
  {
    return mobc2;
  }
  public void setMobc2(Block[][] mobc2) 
  {
    this.mobc2 = mobc2;
  }
  public Block[][] getMobc3() 
  {
    return mobc3;
  }
  public void setMobc3(Block[][] mobc3)
  {
    this.mobc3 = mobc3;
  }
  public Block[][] getMobc4()
  {
    return mobc4;
  }
  public void setMobc4(Block[][] mobc4) 
  {
    this.mobc4 = mobc4;
    
  }
  public Block[][] getMobc5()
  {
    return mobc5;
  }
  public void setMobc5(Block[][] mobc5)
  {
    this.mobc5 = mobc5;
  }
}
