
void mouseReleased()
{
  double mx = mouseX;
  double my = mouseY;
  if (StartmouseXY() && Screencount == 0 ) // main
  {
    background(#CBCBCB);
    Screencount = 1;
    StartmouseXY = false;
    ExitmouseXY = false;
  }
  if (ExitmouseXY()&& Screencount == 0) // main
  {
   exit(); 
  }
  if (StartmouseXY() && Screencount == 1)  //Gameselection
  {
    background(#CBCBCB);
    screen.Gameselection();
  }
  else if ((mx > 400  && my > 70) && (mx < 600 & my < 420) && Screencount ==1 ) //Gameselection 
  {

    surface.setSize(500,605);
    background(#CBCBCB);
    text("sdsdsds",50,50);
    
    tet();
    text("qqqqqq",200,50);
    Screencount = 2;
  }
  
  else if ((mx > 770  && my > 70) && (mx < 970 & my < 420) && Screencount ==1 ) // Gameselection 
  {
    background(#CBCBCB);
    TenTen();
    Screencount = 3;
  }
  
  if ((mx > 50 && my > 70) && (mx < 250 & my < 420) && Screencount ==1 ) // Chapter
  {
    background(#CBCBCB);
    stage.Mstage();
    Screencount = 2;
  }
  else if ((mx > 150 && my > 200) && (mx < 250 & my < 300) && Screencount ==2 && stagecount1 == true)// Chapter
  {
      background(#CBCBCB);
      Screencount = 3;
      stage.Chapter1();
  }
  if ((mx > 0 && my > 450) && (mx < 50 & my < 500) && Screencount ==3  ) // back
  {
    background(#CBCBCB);
    Screencount = 2;
    stage.Mstage();
    stagecount2 = true;
  }
  else if ((mx > 0 && my > 450) && (mx < 50 & my < 500) && Screencount ==1  )
  {
    background(#CBCBCB);
    screen.Gamemain();
    Screencount = 0;
  }
  else  if ((mx > 0 && my > 450) && (mx < 50 & my < 500) && Screencount ==2  )
  {
    background(#CBCBCB);
    textFont(basic,30);
    Screencount = 1;
    screen.Gameselection();
    
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
