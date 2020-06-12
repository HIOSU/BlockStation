

class Stage
{
  int m;
  int[][][] mobc1s = new int[][][] {{{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
                                    {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
                                    {{1, 1, 0}, {0, 0, 0}, {0, 0, 0}}};
                                    
  int[][][] mobc2s = new int[][][] {{{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
                                    {{1, 1, 1}, {1, 1, 1}, {0, 0, 0}}, 
                                    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}};
                                    
  int[][][] mobc3s = new int[][][] {{{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
                                    {{1, 1, 1}, {1, 1, 1}, {0, 0, }}, 
                                    {{0, 0, 0}, {0, 0, 0}, {0, 0, 0}}};
                                    
  int[][][] mobc4s = new int[][][] {{{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
                                    {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}, 
                                    {{1, 1, 0}, {0, 0, 0}, {0, 0, 0}}};
  Block[] mob;
  Block [][] mobc1;                  
  Block [][] mobc2;
  Block [][] mobc3;
  Block [][] mobc4;

  void stage()
  {
    mob = b_s.get_mo();
    m = (int)random(mob.length);
    Block[][] tes1 =  {{mob[1].rot(2), mob[3], mob[4], mob[5], mob[6].rot(2), mob[7], mob[8], mob[9],mob[11].rot(1)},
                       {mob[12].rot(3), mob[14].rot(2), mob[15].rot(2), mob[17].rot(1), mob[18], mob[19].rot(2), mob[20].rot(3), mob[22].rot(1), mob[23]},
                       {mob[25].rot(3), mob[26]}};

    mobc1 = tes1;

    Block[][] tes2 = {{mob[1].rot(2), mob[2].rot(3), mob[4], mob[5], mob[7], mob[10].rot(1), mob[11], mob[12].rot(2), mob[13].rot(2)},
                       {mob[16], mob[17].rot(1), mob[18].rot(1), mob[19], mob[21], mob[26]}};

    mobc2 = tes2;

    Block[][] tes3 = {{mob[1], mob[2], mob[3].rot(1), mob[4], mob[7], mob[8].rot(3), mob[9], mob[10], mob[11].rot(2)},
                      {mob[12].rot(3), mob[17], mob[18].rot(1), mob[22].rot(3), mob[23].rot(3), mob[26]}};

    mobc3 = tes3;

    //Block[] tes4 = {mob[0].getRgb()[0],mob[1].getRgb()[1],mob[2].rot(1).getRgb()[2],mob[3].getRgb()[3],mob[6].getRgb()[6],
    //              mob[7].rot(3).getRgb()[7],mob[8].getRgb()[8],mob[9].getRgb()[9],mob[10].rot(2).getRgb()[10],
    //              mob[11].rot(3).getRgb()[11],mob[16].getRgb()[16],mob[17].rot(1).getRgb()[17],mob[21].rot(3).getRgb()[21],
    //              mob[22].rot(3).getRgb()[22],mob[25].getRgb()[25]};

    //    mobc4 = tes4;     

    Block[][] tes4 = {{mob[1], mob[2], mob[4], mob[5], mob[7].rot(1), mob[8], mob[10], mob[11], mob[12].rot(2)},
                       {mob[13].rot(2), mob[15], mob[16], mob[17].rot(2), mob[18].rot(1), mob[20], mob[21], mob[22].rot(1), mob[23].rot(3)},
                       {mob[25].rot(1), mob[26]}};

    mobc4 = tes4;
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
    rect (150*3,(150*3)+110,20,20);
    rect (10,(150*3)+110,20,20);
    
      for (int b= 0; b < mobc1[p].length; b++)
      {
        for (int i = 0; i< mobc1[p][b].getArray().length; i++) 
        { //rect draw
          for (int j = 0; j < mobc1[p][b].getArray()[0].length; j++)
          {
            if (mobc1[p][b].getArray()[i][j] ==1)
            {
              fill(mobc1[p][b].getRgb()[0], mobc1[p][b].getRgb()[1], mobc1[p][b].getRgb()[2]);
              rect((j*30)+(155*(b%3)), (i*30)+110+(135*((int)(b/3))), 25, 25, 10);
            }
          }
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
    text("Stage.1", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
    for (int i = 0; i < 10; i++)
    {
      for (int j = 0; j < 10; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 800;
      sy = sy + 30;
    }
  }
  void Chapter2()
  {

    background(#CBCBCB);
    rect (150*3,(150*3)+110,20,20);
    rect (10,(150*3)+110,20,20);
    if ( p < 2)
    {
      for (int b= 0; b < mobc2[p].length; b++)
      {
        for (int i = 0; i< mobc2[p][b].getArray().length; i++) 
        { //rect draw
          for (int j = 0; j < mobc2[p][b].getArray()[0].length; j++)
          {
            if (mobc2[p][b].getArray()[i][j] ==1)
            {
              fill(mobc2[p][b].getRgb()[0], mobc2[p][b].getRgb()[1], mobc2[p][b].getRgb()[2]);
              rect((j*30)+(155*(b%3)), (i*30)+110+(135*((int)(b/3))), 25, 25, 10);
            }
          }
        }
      }
    }
  
    stx = 500;
    sy = 150;
    textFont(basic, 50);
    text("Stage.2", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
    for (int i = 0; i < 5; i++)
    {
      for (int j = 0; j < 15; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 500;
      sy = sy + 30;
    }
  }
  void Chapter3()
  {

    background(#CBCBCB);
    rect (150*3,(150*3)+110,20,20);
    rect (10,(150*3)+110,20,20);
    
    if(p < 2)
    {
      for (int b= 0; b < mobc3[p].length; b++)
      {
        for (int i = 0; i< mobc3[p][b].getArray().length; i++) 
        { //rect draw
          for (int j = 0; j < mobc3[p][b].getArray()[0].length; j++)
          {
            if (mobc3[p][b].getArray()[i][j] ==1)
            {
              fill(mobc3[p][b].getRgb()[0], mobc3[p][b].getRgb()[1], mobc3[p][b].getRgb()[2]);
              rect((j*30)+(155*(b%3)), (i*30)+110+(135*((int)(b/3))), 25, 25, 10);
            }
          }
        }
      }
    }
    stx = 650;
    sy = 100;
    textFont(basic, 50);
    text("Stage.3", 400, 70);
    iback = loadImage("back.png");
    image(iback, 0, 650, 50, 50);
    for (int i = 0; i < 5; i++)
    {
      for (int j = 0; j < 5; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 650;
      sy = sy + 30;
    }
    for (int i = 0; i < 5; i++)
    {
      for (int j = 0; j < 10; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 650;
      sy = sy + 30;
    }
  }
  void Chapter4()
  {

    background(#CBCBCB);
    rect (150*3,(150*3)+110,20,20);
    rect (10,(150*3)+110,20,20);
      for (int b= 0; b < mobc4[p].length; b++)
      {
        for (int i = 0; i< mobc4[p][b].getArray().length; i++) 
        { //rect draw
          for (int j = 0; j < mobc4[p][b].getArray()[0].length; j++)
          {
            if (mobc4[p][b].getArray()[i][j] ==1)
            {
              fill(mobc4[p][b].getRgb()[0], mobc4[p][b].getRgb()[1], mobc4[p][b].getRgb()[2]);
              rect((j*30)+(155*(b%3)), (i*30)+110+(135*((int)(b/3))), 25, 25, 10);
            }
          }
        }
      }
    
    stx = 500;
    sy = 100;
    textFont(basic, 50);
    text("Stage.4", 400, 70);

    image(iback, 0,650, 50, 50);
    for (int i = 0; i < 5; i++)
    {
      for (int j = 0; j < 4; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 500;
      sy = sy + 30;
    }
    stx = 740;
    sy = 100;
    for (int i = 0; i < 5; i++)
    {
      for (int j = 0; j < 4; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 740;
      sy = sy + 30;
    }
    stx = 500;
    for (int i = 0; i < 5; i++)
    {
      for (int j = 0; j < 12; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 500;
      sy = sy + 30;
    }
  }
  void Chapter5()
  {
    stx = 700;
    sy = 100;
    textFont(basic, 50);
    text("Stage.5", 400, 70);

    image(iback, 0, 650, 50, 50);
    for (int i = 0; i < 4; i++)
    {
      for (int j = 0; j < 4; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 700;
      sy = sy + 30;
    }
    stx = 580;
    for (int i = 0; i < 4; i++)
    {
      for (int j = 0; j < 12; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 580;
      sy = sy + 30;
    }
    stx = 700;
    for (int i = 0; i < 4; i++)
    {
      for (int j = 0; j < 4; j++)
      {
        fill(255);
        rect(stx, sy, 25, 25, 10);
        stx = stx + 30;
      }
      stx = 700;
      sy = sy + 30;
    }
  }
}
