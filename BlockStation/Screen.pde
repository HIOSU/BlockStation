
class Screen
{
  Screen()
  {
  }
  void Gamemain()
  {
    mainText = loadFont("Arial-Black-48.vlw");
    fill(#000000);
    textFont(mainText,70);
    text("Block Station",275, 200);
  
    fill(#EDFC7D);
    rect(400,300,200,40,20);
  
    basic = loadFont("ArialMT-48.vlw");
    fill(#000000);
    textFont(basic,30);
    text("Start!",470, 330);

    fill(#EDFC7D);
    rect(400,350,200,40,20);
  
    fill(#000000);
    text("Exit!!",470, 380);
    
    image(loadImage("re.png"),width-60,5,50,50);
    image(loadImage("save.png"),width-130,5,50,50);
    //float a = random(0,bs.get_te().length);
    
  }
    void Gameselection()
  {
      ihelp = loadImage("help.png");
      
      fill(#D8D6D6);
      rect(50,70,200,350,20);
      image(ihelp, 200, 95, 30, 30);
      fill(0);
      text("B.Puzzle",70,120);
      imo = loadImage("mo.PNG");
      image(imo, 55, 190, 190, 220);
      
     
      fill(#D8D6D6);
      rect(400,70,200,350,20);
      image(ihelp, 550, 95, 30, 30);
      fill(0);
      text("B.Tetris",430,120);
      ite = loadImage("Te.png");
      image(ite, 405, 190, 190, 220);
    
      
      fill(#D8D6D6);
      rect(770,70,200,350,20);
      image(ihelp, 920, 95, 30, 30);
      fill(0);
      text("B.Tentris",790,120);
      iten = loadImage("Ten.png");
      image(iten, 775, 190, 190, 220);
      
      iback = loadImage("back.png");
      image(iback, 0, 450, 50, 50);
          
  }
}
