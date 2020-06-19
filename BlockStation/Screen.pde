
class Screen
{
  Screen()
  {
  }
  void Gamemain()
  {
    mainText = loadFont("data/Font/Arial-Black-48.vlw");
    fill(#000000);
    textFont(mainText,70);
    text("Block Station",275, 200);
  
    fill(#EDFC7D);
    rect(400,300,200,40,20);
  
    basic = loadFont("data/Font/ArialMT-48.vlw");
    fill(#000000);
    textFont(basic,30);
    text("Start!",470, 330);

    fill(#EDFC7D);
    rect(400,350,200,40,20);
  
    fill(#000000);
    text("Exit!!",470, 380);
    
    //float a = random(0,bs.get_te().length);
    
  }
    void Gameselection()
  {
      ihelp = loadImage("data/Image/help.png");
      
      fill(#D8D6D6);
      rect(50,70,200,350,20);
      image(ihelp, 200, 95, 30, 30);
      fill(0);
      text("B.Puzzle",70,120);
      imo = loadImage("data/Image/mo.PNG");
      image(imo, 55, 190, 190, 220);
      
     
      fill(#D8D6D6);
      rect(400,70,200,350,20);
      image(ihelp, 550, 95, 30, 30);
      fill(0);
      text("B.Tetris",430,120);
      ite = loadImage("data/Image/Te.png");
      image(ite, 405, 190, 190, 220);
    
      
      fill(#D8D6D6);
      rect(770,70,200,350,20);
      image(ihelp, 920, 95, 30, 30);
      fill(0);
      text("B.Tentris",790,120);
      iten = loadImage("data/Image/Ten.png");
      image(iten, 775, 190, 190, 220);
      
      iback = loadImage("data/Image/back.png");
      image(iback, 0, 450, 50, 50);
          
  }
}
