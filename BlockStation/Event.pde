
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

  }
  else if ((mx > 200  && my > 95) && (mx < 230 & my < 125) && Screencount.equals("select") && helpcount == 0 ) // help
  {
    helpcount = 1;
  }
  else if ((mx > 550  && my > 95) && (mx < 580 & my < 125) && Screencount.equals("select") && helpcount == 0 ) // help
  {
    helpcount = 2;
  }
  else if ((mx > 920  && my > 95) && (mx < 950 & my < 125) && Screencount.equals("select") && helpcount == 0 ) // help
  {
    helpcount = 3;
  }
  else if ((mx > 400  && my > 70) && (mx < 600 & my < 420) && Screencount.equals("select") && helpcount == 0 ) //Gameselection 
  {
    surface.setSize(500,605);
    background(#CBCBCB);
    Screencount = "tetris";

  }
  else if ((mx > 770  && my > 70) && (mx < 970 & my < 420) && Screencount.equals("select") && helpcount == 0 ) //Gameselection 
  {
    surface.setSize(705,430);
    background(#CBCBCB);
    Screencount = "tentris";
  }
  
  else if ((mx > 50 && my > 70) && (mx < 250 & my < 420) && Screencount.equals("select") && helpcount == 0) // Gameselection
  {
    background(#CBCBCB);
    Screencount = "stage";
  }
  else if ((mx > 150 && my > 200) && (mx < 250 & my < 300) && Screencount.equals("stage") && stagecount1 == true)// Chapter
  {
      stage.stage();
      surface.setSize(1200,700);
      background(#CBCBCB);
      Screencount = "stage1";
  }
  else if ((mx > 300 && my > 200) && (mx < 400 & my < 300) && Screencount.equals("stage") && stagecount2 == true)// Chapter
  {
      surface.setSize(1200,700);
      background(#CBCBCB);
      Screencount = "stage2";
      stage.Chapter2();
  }
  else if ((mx > 450 && my > 200) && (mx < 500 & my < 300) && Screencount.equals("stage") && stagecount3 == true)// Chapter
  {
      surface.setSize(1200,700);
      background(#CBCBCB);
      Screencount = "stage3";
  }
  else if ((mx > 550 && my > 200) && (mx < 650 & my < 300) && Screencount.equals("stage") && stagecount4 == true)// Chapter
  {
      surface.setSize(1200,700);
      background(#CBCBCB);
      Screencount = "stage4";
  }
  else if ((mx > 700 && my > 200) && (mx < 800 & my < 300) && Screencount.equals("stage") && stagecount5 == true)// Chapter
  {
      surface.setSize(1200,700);
      background(#CBCBCB);
      Screencount = "stage5";
  }
  if ((mx > 0 && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select")  && helpcount == 0) // back
  {
    background(#CBCBCB);
    Screencount = "main";
  }
  else if ((mx > 0  && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select") && helpcount == 1 )// helpback
  {
    background(#CBCBCB);
    helpcount = 0; 
  }
  else if ((mx > 0  && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select") && helpcount == 2 )// helpback
  {
    background(#CBCBCB);
    helpcount = 0; 
  }
  else if ((mx > 0  && my > 450) && (mx < 50 & my < 500) && Screencount.equals("select") && helpcount == 3 )// helpback
  {
    background(#CBCBCB);
    helpcount = 0; 
  }
  else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage1")) // stage P
  {
    if (p == 2)
    {
      p =0;
    }
    else 
    {
      p++;
    }
  }
  else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage1")) // stage P
  {
    if (p == 0)
    {
      p = 2;
    }
    else 
    {
      p--;
    }
  }
    else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage2")) // stage P
  {
    if (p == 2)
    {
      p =0;
    }
    else 
    {
      p++;
    }
  }
  else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage2")) // stage P
  {
    if (p == 0)
    {
      p = 2;
    }
    else 
    {
      p--;
    }
  }
    else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage3")) // stage P
  {
    if (p == 2)
    {
      p =0;
    }
    else 
    {
      p++;
    }
  }
  else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage3")) // stage P
  {
    if (p == 0)
    {
      p = 2;
    }
    else 
    {
      p--;
    }
  }
    else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage4")) // stage P
  {
    if (p == 2)
    {
      p =0;
    }
    else 
    {
      p++;
    }
  }
  else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage4")) // stage P
  {
    if (p == 0)
    {
      p = 2;
    }
    else 
    {
      p--;
    }
  }
      else if ((mx > 150*3  && my > (150*3)+110) && (mx < (150*3)+20 & my < (150*3)+110+20) && Screencount.equals("stage5")) // stage P
  {
    if (p == 2)
    {
      p =0;
    }
    else 
    {
      p++;
    }
  }
  else if ((mx > 10  && my > (150*3)+110) && (mx < 10+20 & my < (150*3)+110+20) && Screencount.equals("stage5")) // stage P
  {
    if (p == 0)
    {
      p = 2;
    }
    else 
    {
      p--;
    }
  }
  else  if ((mx > 0 && my > 450) && (mx < 50 & my < 500) && Screencount.equals("stage") ) // back
  {
    background(#CBCBCB);
    textFont(basic,30);
    Screencount = "select";
    
  }
  else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage1")  ) // back
  {
    surface.setSize(1000,500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
    //stagecount2 = true;
  }
    else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage2")  ) // back
  {
    surface.setSize(1000,500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  }
    else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage3")  ) // back
  {
    surface.setSize(1000,500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  }
    else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage4")  ) // back
  {
    surface.setSize(1000,500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  }
    else if ((mx > 0 && my > 650) && (mx < 50 & my < 700) && Screencount.equals("stage5")  ) // back
  {
    surface.setSize(1000,500);
    p=0;
    background(#CBCBCB);
    Screencount = "stage";
  }
    else if ((mx > 0 && my > 555) && (mx < 50 & my < 605) && Screencount.equals("tetris")  ) // back
  {
    surface.setSize(1000,500);
    background(#CBCBCB);
    Screencount = "select";
  }
    else if ((mx > 0 && my > 380) && (mx < 50 & my < 430) && Screencount.equals("tentris")  ) // back
  {
    surface.setSize(1000,500);
    background(#CBCBCB);
    Screencount = "select";
  }  else if ((mx > 645 && my > 370) && (mx < 695 & my < 420) && Screencount.equals("tentris")){ // re
    tentris.reset();
  }
}
void mouseDragged()
{
  }
  if ( p < 2 && (Screencount.equals("stage1") || Screencount.equals("stage2") || Screencount.equals("stage3")  || Screencount.equals("stage4") || Screencount.equals("stage5")))
    {
      for (int i= 0; i < stage.getMobc1()[p].length; i++)
      {
        if(stage.getMobc1()[p][i].getIsCilcked() == true)
        {
          if (mouseX > 700)// && mouseY > 250 && mouseX < 700+(30*j) && mouseY < 250+(30*i
          {
            stage.getMobc1()[p][i].setBflag(true);
          }
          else 
          {
            stage.xy = new int[] {155*(i%3), 110+(135*((int)(i/3)))};
            stage.mobc1[p][i].setIocation(stage.xy);
            if (stage.getMobc1()[p][i].getBflag() == false)
            {
              stage.getMobc1s()[p][i/3][i%3] = 1;
            }
          }
        
          stage.getMobc1()[p][i].setIsCilcked(false);
        }
      }
    }
  
}

  void mousePressed()
  {
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
   
    if ( mouseButton == LEFT && (Screencount.equals("stage1") || Screencount.equals("stage2") || Screencount.equals("stage3")  || Screencount.equals("stage4") || Screencount.equals("stage5")))
    {
      if ( p < 2 )
      {
        for (int i= 0; i < stage.getMobc1()[p].length; i++)
        {
          if(stage.mobc1s[p][i/3][i%3] == 1)
          {
            if ((mouseX  > 155*(i%3) && mouseY > 110+(155*((int)(i/3))) && (mouseX < 150+ (155*(i%3)) && mouseY < 260+ (155*((int)(i/3))))))
            {
              stage.getMobc1()[p][i].setIsCilcked(true);
              stage.getMobc1s()[p][i/3][i%3] = 0;
            }
          }
        }
      }
    }
  }
  void mouseDragged()
  {
    if ( p < 2 && (Screencount.equals("stage1") || Screencount.equals("stage2") || Screencount.equals("stage3")  || Screencount.equals("stage4") || Screencount.equals("stage5")))
    {
      for (int i= 0; i < stage.getMobc1()[p].length; i++)
      {
        if (stage.getMobc1()[p][i].getIsCilcked() == true)
        {
          int [] mxy = {(int)mouseX, (int)mouseY};
          
          stage.getMobc1()[p][i].setIocation(mxy);
          //print(stage.getMobc1()[p][i].getIocation()[0] + "," +  stage.getMobc1()[p][i].getIocation()[1]);
         // stage.draw_array(stage.getMobc1()[p][i].getArray(),stage.getMobc1()[p][i].getIocation()[0], stage.getMobc1()[p][i].getIocation()[1], true, stage.getMobc1()[p][i].getIndex());
          
        
        }
      }
    }
  }


boolean StartmouseXY()
{
  double mx = mouseX;
  double my = mouseY;
  if( (mx > 400 && my > 300) && (mx < 600 && my < 340))
  {
    return true;
  }
  else 
  {
    return false;
  }
}

boolean ExitmouseXY()
{
  double mx = mouseX;
  double my = mouseY;
  if( (mx > 400 && my > 350) && (mx < 600 && my < 390) )
  {
    return true;
  }
  else 
  {
    return false;
  }
}
