
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
  
  }
    void Gameselection()
  {

       //stage.stegetest();

    
      fill(#D8D6D6);
      rect(50,70,200,350,20);
      fill(0);
      text("B.mo",110,120);
      imo = loadImage("mo.PNG");
      image(imo, 55, 190, 190, 220);
    
      fill(#D8D6D6);
      rect(400,70,200,350,20);
      fill(0);
      text("B.Te",460,120);
      ite = loadImage("Te.png");
      image(ite, 405, 190, 190, 220);
    
      fill(#D8D6D6);
      rect(770,70,200,350,20);
      fill(0);
      text("B.Ten",830,120);
      iten = loadImage("Ten.png");
      image(iten, 775, 190, 190, 220);
      
      iback = loadImage("back.png");
      image(iback, 0, 450, 50, 50);
          
  }
}