
void mouseReleased()
{
  double mx = mouseX;
  double my = mouseY;
  if (StartmouseXY() && Screencount.equals("main")) // main
  {
    background(#CBCBCB);
    Screencount = "select";
    StartmouseXY = false;
    ExitmouseXY = false;
  }
  if (ExitmouseXY()&& Screencount.equals("main")) // main
  {
    exit();
  }
  if (StartmouseXY() && Screencount.equals("select"))  //Gameselection
  {
    background(#CBCBCB);
  } else if ((mx > 200  && my > 95) && (mx < 230 & my < 125) && Screencount.equals("select") && helpcount == 0 ) // help
  {
    helpcount = 1;
  } else if ((mx > 550  && my > 95) && (mx < 580 & my < 125) && Screencount.equals("select") && helpcount == 0 ) // help
  {
    helpcount = 2;
  } else if ((mx > 920  && my > 95) && (mx < 950 & my < 125) && Screencount.equals("select") && helpcount == 0 ) // help
  {
    helpcount = 3;
  } else if ((mx > 400  && my > 70) && (mx < 600 & my < 420) && Screencount.equals("select") && helpcount == 0 ) //Gameselection 
  {
    surface.setSize(520, 605);
    background(#CBCBCB);
    Screencount = "tetris";
  } else if ((mx > 770  && my > 70) && (mx < 970 & my < 420) && Screencount.equals("select") && helpcount == 0 ) //Gameselection 
  {
    surface.setSize(705, 430);
    background(#CBCBCB);
    Screencount = "tentris";
  } else if ((mx > 50 && my > 70) && (mx < 250 & my < 420) && Screencount.equals("select") && helpcount == 0) // Gameselection
  {
    background(#CBCBCB);
    Screencount = "stage";
  } else if ((mx > 150 && my > 200) && (mx < 250 & my < 300) && Screencount.equals("stage") && stagecount1 == true)// Chapter
  {
    stage.stage();
    surface.setSize(1200, 700);
    background(#CBCBCB);
    Screencount = "stage1";
  } else if ((mx > 300 && my > 200) && (mx < 400 & my < 300) && Screencount.equals("stage") && stagecount2 == true)// Chapter
  {
    stage.stage();
    surface.setSize(1200, 700);
    background(#CBCBCB);
    Screencount = "stage2";
    stage.Chapter2();
  } else if ((mx > 450 && my > 200) && (mx < 500 & my < 300) && Screencount.equals("stage") && stagecount3 == true)// Chapter
  {
    stage.stage();
    surface.setSize(1200, 700);
    background(#CBCBCB);
    Screencount = "stage3";
  } else if ((mx > 550 && my > 200) && (mx < 650 & my < 300) && Screencount.equals("stage") && stagecount4 == true)// Chapter
  {
    stage.stage();
    surface.setSize(1200, 700);
    background(#CBCBCB);
    Screencount = "stage4";
  } else if ((mx > 700 && my > 200) && (mx < 800 & my < 300) && Screencount.equals("stage") && stagecount5 == true)// Chapter
  {
    stage.stage();
    surface.setSize(1200, 700);
    background(#CBCBCB);
    Screencount = "stage5";
  }
  if ((mx > 0 && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select")  && helpcount == 0) // back
  {
    background(#CBCBCB);
    Screencount = "main";
  } else if ((mx > 0  && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select") && helpcount == 1 )// helpback
  {
    background(#CBCBCB);
    helpcount = 0;
  } else if ((mx > 0  && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select") && helpcount == 2 )// helpback
  {
    background(#CBCBCB);
    helpcount = 0;
  } else if ((mx > 0  && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select") && helpcount == 3 )// helpback
  {
    background(#CBCBCB);
    helpcount = 0;
  } else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage1") && CheckM == false) // stage P
  {
    if (p == 2)
    {
      p =0;
    } else 
    {
      p++;
    }
  } else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage1") && CheckM == false) // stage P
  {
    if (p == 0)
    {
      p = 2;
    } else 
    {
      p--;
    }
  } else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage2")&& CheckM == false) // stage P
  {
    if (p == 2)
    {
      p =0;
    } else 
    {
      p++;
    }
  } else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage2")&& CheckM == false) // stage P
  {
    if (p == 0)
    {
      p = 2;
    } else 
    {
      p--;
    }
  } else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage3")&& CheckM == false) // stage P
  {
    if (p == 2)
    {
      p =0;
    } else 
    {
      p++;
    }
  } else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage3")&& CheckM == false) // stage P
  {
    if (p == 0)
    {
      p = 2;
    } else 
    {
      p--;
    }
  } else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage4")&& CheckM == false) // stage P
  {
    if (p == 2)
    {
      p =0;
    } else 
    {
      p++;
    }
  } else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage4")&& CheckM == false) // stage P
  {
    if (p == 0)
    {
      p = 2;
    } else 
    {
      p--;
    }
  } else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage5")&& CheckM == false) // stage P
  {
    if (p == 2)
    {
      p =0;
    } else 
    {
      p++;
    }
  } else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage5")&& CheckM == false) // stage P
  {
    if (p == 0)
    {
      p = 2;
    } else 
    {
      p--;
    }
  } else  if ((mx > 0 && my > 450) && (mx < 50 & my < 500) && Screencount.equals("stage") && CheckM == false ) // back
  {
    background(#CBCBCB);
    textFont(basic, 30);
    Screencount = "select";
  } else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage1") && CheckM == false ) // back
  {
    surface.setSize(1000, 500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
    //stagecount2 = true;
  } else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage2") && CheckM == false ) // back
  {
    surface.setSize(1000, 500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  } else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage3") && CheckM == false ) // back
  {
    surface.setSize(1000, 500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  } else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage4") && CheckM == false ) // back
  {
    surface.setSize(1000, 500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  } else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage5") && CheckM == false ) // back
  {
    surface.setSize(1000, 500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  } else if ((mx > 0 && my > 555) && (mx < 50 & my < 605) && Screencount.equals("tetris")  ) // back
  {
    surface.setSize(1000, 500);
    background(#CBCBCB);
    Screencount = "select";
  } else if ((mx > 0 && my > 380) && (mx < 50 & my < 430) && Screencount.equals("tentris")  ) // back
  {
    surface.setSize(1000, 500);
    background(#CBCBCB);
    Screencount = "select";
  } else if ((mx > 645 && my > 370) && (mx < 695 & my < 420) && Screencount.equals("tentris")) { // re
    tentris.reset();
  }
  if (Screencount.equals("tentris")){
    tentris.tenEventR();
  }
  if ( p < 2 && Screencount.equals("stage1"))
  {
    BlockR(stage.mobc1, stage.mobc1s);
  } else if ( p < 2 && Screencount.equals("stage2"))
  {
    BlockR(stage.mobc2, stage.mobc2s);
  } else if ( p < 2 && Screencount.equals("stage3"))
  {
    BlockR(stage.mobc3, stage.mobc3s);
  } else if (Screencount.equals("stage4"))
  {
    BlockR(stage.mobc4, stage.mobc4s);
  } else if (Screencount.equals("stage5"))
  {
    BlockR(stage.mobc5, stage.mobc5s);
  } else if (Screencount.equals("tetris")) {
    //tetris.tet_block();
  }

  //for (int i= 0; i < stage.getMobc1()[p].length; i++)
  //{
  //  if (stage.getMobc1()[p][i].getIsCilcked() == true)
  //  {
  //    if (mouseX > 700)// && mouseY > 250 && mouseX < 700+(30*j) && mouseY < 250+(30*i
  //    {
  //      stage.getMobc1()[p][i].setBflag(true);
  //    }
  //    else 
  //    {
  //      stage.xy = new int[] {155*(i%3), 110+(135*((int)(i/3)))};
  //      stage.mobc1[p][i].setLocation(stage.xy);
  //      if (stage.getMobc1()[p][i].getBflag() == false)
  //      {
  //        stage.getMobc1s()[p][i/3][i%3] = 1;
  //      }
  //    }

  //    stage.getMobc1()[p][i].setIsCilcked(false);
  //  }
  //}
}

void mousePressed()
{
  if (Screencount.equals("tentris")) {
    tentris.tenEventP();
  }
  //if (mouseButton == LEFT)
  //{
  //  if (count < 3)
  //  {
  //    for (int i = 0; i < 3 ;i++ )
  //    {
  //      for (int j= 0; j < 3; j++)
  //      {
  //       if ((mouseX  > 0 + (j*150) && mouseY > 110 + (i*150)) && (mouseX < 150+ (j*150) && mouseY < 260+ (i*150)) && count_f == 0)
  //        {
  //          draw_array(stage.getMobc1()[0][0].getArray(), mouseX, mouseY, true, stage.getMobc1()[0][0].getIndex());
  //          count_f = 1;
  //          stage.getMobc1()s[p][i][j] = 0;
  //          noCursor();
  //          count+=1;
  //        }
  //      }
  //    }
  //  }
  //}
  //if(stage.getMobc1()[0][0].getIsCilcked() == false)  155*(b%3), 110+(135*((int)(b/3))),

  if (p < 2 && mouseButton == LEFT && (Screencount.equals("stage1")))
  {
    noCursor();

    //if ( p < 2 )
    //{
    BlockP(stage.mobc1, stage.mobc1s);
  } else if ( p < 2 && mouseButton == LEFT && (Screencount.equals("stage2")))
  {
    //if ( p < 2 )
    //{
    BlockP(stage.mobc2, stage.mobc2s);
  } else if (  p < 2 && mouseButton == LEFT && (Screencount.equals("stage3")))
  {
    //if ( p < 2 )
    //{
    BlockP(stage.mobc3, stage.mobc3s);
  } else if (mouseButton == LEFT && (Screencount.equals("stage4")))
  {
    //if ( p < 2 )
    //{
    BlockP(stage.mobc4, stage.mobc4s);
  } else if (mouseButton == LEFT && (Screencount.equals("stage5")))
  {
    //if ( p < 2 )
    //{
    BlockP(stage.mobc5, stage.mobc5s);
  }

  //for (int i= 0; i < stage.getMobc1()[p].length; i++)
  //{
  //  if(stage.mobc1s[p][i/3][i%3] == 1)
  //  {
  //    if ((mouseX  > 155*(i%3) && mouseY > 110+(155*((int)(i/3))) && (mouseX < 150+ (155*(i%3)) && mouseY < 260+ (155*((int)(i/3))))))
  //    {
  //      stage.getMobc1()[p][i].setIsCilcked(true);
  //      stage.getMobc1s()[p][i/3][i%3] = 0;
  //    }
  //  }
  //}
}
void mouseDragged()
{
  if (Screencount.equals("tentris")){
    tentris.tenEventD();
  }
  if ( p < 2 && (Screencount.equals("stage1")))
  {

    BlockD(stage.mobc1);
  } else if (p < 2 && Screencount.equals("stage2"))
  {
    BlockD(stage.mobc2);
  } else if ( p < 2 && (Screencount.equals("stage3")))
  {
    BlockD(stage.mobc3);
  } else if (p < 3 && Screencount.equals("stage4"))
  {
    BlockD(stage.mobc4);
  } else if (p < 3 && Screencount.equals("stage5"))
  {
    BlockD(stage.mobc5);
  }
  //for (int i= 0; i < stage.getMobc1()[p].length; i++)
  //{
  //  if (stage.getMobc1()[p][i].getIsCilcked() == true)
  //  {
  //    int [] mxy = {(int)mouseX, (int)mouseY};

  //    stage.getMobc1()[p][i].setLocation(mxy);
  //    //print(stage.getMobc1()[p][i].getLocation()[0] + "," +  stage.getMobc1()[p][i].getLocation()[1]);
  //   // stage.draw_array(stage.getMobc1()[p][i].getArray(),stage.getMobc1()[p][i].getLocation()[0], stage.getMobc1()[p][i].getLocation()[1], true, stage.getMobc1()[p][i].getIndex());


  //  }
  //}
}


boolean StartmouseXY()
{
  double mx = mouseX;
  double my = mouseY;
  if ( (mx > 400 && my > 300) && (mx < 600 && my < 340))
  {
    return true;
  } else 
  {
    return false;
  }
}

boolean ExitmouseXY()
{
  double mx = mouseX;
  double my = mouseY;
  if ( (mx > 400 && my > 350) && (mx < 600 && my < 390) )
  {
    return true;
  } else 
  {
    return false;
  }
}
void BlockD(Block [][] blocks)
{
  for (int i= 0; i < blocks[p].length; i++)
  {
    if (blocks[p][i].getIsCilcked() == true)
    {
      float [] mxy = {(float)mouseX, (float)mouseY};          
      blocks[p][i].setLocation(mxy);
      //print(stage.getMobc1()[p][i].getLocation()[0] + "," +  stage.getMobc1()[p][i].getLocation()[1]);
      // stage.draw_array(stage.getMobc1()[p][i].getArray(),stage.getMobc1()[p][i].getLocation()[0], stage.getMobc1()[p][i].getLocation()[1], true, stage.getMobc1()[p][i].getIndex());
    }
  }
}
void BlockP(Block [][] block, int [][][] blocks)
{
  for (int i= 0; i < block[p].length; i++)
  {
    if (blocks[p][i/3][i%3] == 1)
    {
      if ((mouseX  > 155*(i%3) && mouseY > 110+(155*((int)(i/3))) && (mouseX < 150+ (155*(i%3)) && mouseY < 260+ (155*((int)(i/3))))))
      {
        if ((mouseX  > 155*(i%3) && mouseY > 110+(155*((int)(i/3))) && (mouseX < 150+ (155*(i%3)) && mouseY < 260+ (155*((int)(i/3))))))
        {
          block[p][i].setIsCilcked(true);
          blocks[p][i/3][i%3] = 0;
          CheckM = true;
//          noCursor();
        }
      }
    }
  }
}
void BlockR(Block [][] block, int [][][] blocks)
{
  for (int i= 0; i < block[p].length; i++)
  {
    if (block[p][i].getIsCilcked() == true)
    {
      if ((((700 - (block[p][i].getBlockArea()[0]*30)) <= mouseX) && ((1145 - (block[p][i].getBlockArea()[2]*30)) >= mouseX) && ((250 - (block[p][i].getBlockArea()[1]*30)) <= mouseY ) && ((395 - ((block[p][i].getBlockArea()[3]*30))) >= mouseY)) && (Screencount.equals("stage1")))// && mouseY > 250 && mouseX < 700+(30*j) && mouseY < 250+(30*i
      {
          test(block,stage.moba1);
      }
      else if ((((650 - (block[p][i].getBlockArea()[0]*30)) <= mouseX) && ((795 - (block[p][i].getBlockArea()[2]*30)) >= mouseX) && ((150 - (block[p][i].getBlockArea()[1]*30)) <= mouseY ) && ((295 - ((block[p][i].getBlockArea()[3]*30))) >= mouseY)) && (Screencount.equals("stage2")) || ((650 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((945 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((300 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((445 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY))// && mouseY > 250 && mouseX < 700+(30*j) && mouseY < 250+(30*i
      {
        //print(((700 - (block[p][i].getBlockArea()[0]))));
        block[p][i].setBflag(true);
        CheckM = false;
      }
      //else if (((650 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((945 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((300 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((445 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY) && (Screencount.equals("stage2")))
      //{
      //  block[p][i].setBflag(true);
      //  CheckM = false;
      //}
      //draw_array(moba3, 700, 150, false, -1);
      else if (((815 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((930 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((150 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((265 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY) && (Screencount.equals("stage3")))
      {
        block[p][i].setBflag(true);
        CheckM = false;
      }
      else if (((700 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((1035 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((270 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((385 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY) && (Screencount.equals("stage3")))
      {
        block[p][i].setBflag(true);
        CheckM = false;
      }
      else if (((815 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((930 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((390 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((505 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY) && (Screencount.equals("stage3")))
      {
        block[p][i].setBflag(true);
        CheckM = false;
      }
      //draw_array(moba4, 700, 150, false, -1);
      else if (((700 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((815 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((150 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((445 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY) && (Screencount.equals("stage4")))
      {
        block[p][i].setBflag(true);
        CheckM = false;
      }
      else if (((820 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((935 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((300 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((445 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY) && (Screencount.equals("stage4")))
      {
        block[p][i].setBflag(true);
        CheckM = false;
      }
      else if (((940 - (block[p][i].getBlockArea()[0]*30)-5) <= mouseX) && ((1055 - (block[p][i].getBlockArea()[2]*30)-5) >= mouseX) && ((150 - (block[p][i].getBlockArea()[1]*30)-5) <= mouseY ) && ((445 - ((block[p][i].getBlockArea()[3]*30)-5)) >= mouseY) && (Screencount.equals("stage4")))
      {
        block[p][i].setBflag(true);
        CheckM = false;
      } else 
      {
        stage.xy = new float[] {155*(i%3), 110+(135*((i/3)))};
        block[p][i].setLocation(stage.xy);
        if (block[p][i].getBflag() == false)
        {
          blocks[p][i/3][i%3] = 1;
          CheckM = false;
        }
      }
      block[p][i].setIsCilcked(false);
    }
  }
}
void test(Block[][] block , int[][] r)
{
    int[][] newArray = {};

        for (int i = 0; i < block[p][i].getBlockArea()[1]; i++) 
        {
          int[] qw = {};
          for (int j = 0; j < r[0].length + block[p][i].getBlockArea()[0]; j++) {
            qw = (int[])append(qw, 0);
          }
          newArray = (int[][])append(newArray, qw);
        }

        for (int i = 0; i< r.length; i++) {
          int[] foo = {};
          for (int j = 0; j< block[p][i].getBlockArea()[0]; j++) {
            foo = (int[])append(foo, 0);
          }
          for (int z = 0; z< r[i].length; z++) {
            foo = (int[]) append(foo, r[i][z]);
          }
          newArray = (int[][])append(newArray, foo);
          block[p][i].setBflag(true);
          CheckM = false;
          
          
          //for (int z = 0; z< block[p].length; z++) {
//            print(newArray[i][z]);
//            print(block[p][z]);
            //if (newArray[i][z] + block[p][i] == 1)
            //{
              
            //}
        //  }
        //}
        //for (int i =0; i < newArray.length; i++)
        //{
        //  for (int j =0; j < newArray[i].length; j++)
        //  {
        //    print(newArray[i][j]);
        //  }
        //  println("");
        //}
} //<>//
  }
 

  //for (int i = 0; i < r.length; i++)
  //{
  //  for (int j = 0; j < r[i].length; j++) 
  //  {
  //    if(r[i][j] == 0)
  //    {
          //block[p][i].setBflag(true);
          //CheckM = false;
      //}
    // }
  //}
   
  
//if ((((700 - (block[p][i].getBlockArea()[0]*30)) <= mouseX) && ((1145 - (block[p][i].getBlockArea()[2]*30)) >= mouseX) && ((250 - (block[p][i].getBlockArea()[1]*30)) <= mouseY ) && ((395 - ((block[p][i].getBlockArea()[3]*30))) >= mouseY)) && (Screencount.equals("stage1")))// && mouseY > 250 && mouseX < 700+(30*j) && mouseY < 250+(30*i
//      {
//        //print(((700 - (block[p][i].getBlockArea()[0]))));
//        block[p][i].setBflag(true);
//        CheckM = false;
//      }
