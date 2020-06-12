class Tentris{
  int maxscore = 0;
  int score = 0;
  Block nextBlock = null;
  Item item = null;
  int nowBlock = 0;
  int[][] tentenArray = {{0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,1,2,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0},
                          {0,0,0,0,0,0,0,0,0,0}};  
  Block[] blocks;
  void setting(){
    blocks = b_s.get_ten();
  }
  void run_tentris(){
    tentris_ui();
  }
  void tentris_ui()
  {
    image(iback, 0, 380, 50, 50);
    fill(0);
    text("MaxScore. "+maxscore,150,30);
    text("Score. "+score,150, 60);
    fill(255);
    stroke(0);
    strokeWeight(1);
    rect(480,20,155,155,25);
    rect(480,180,90,90,25);
  
    stroke(255,255,000);
    strokeWeight(9);
    line(325,373,470,373);
  
    draw_array(tentenArray, 10, 80, false);
    draw_array(blocks[2].getArray(),480,300, true);
      //for (int i = 0; i<10; i++){
      //  for(int j = 0; j<10; j++){
      //    rect(tenx + 5, teny, 25, 25, 10);
      //    tenx = tenx + 30;
      //    }
      //   tenx = 10;
      //   teny = teny + 30;
      //}
     image(iback, 0, 450, 50, 50);
  }
  
  void draw_array(int[][] array,int x, int y, boolean isBlock){
    noStroke();
    for(int i = 0; i<array.length; i++){
      for(int j = 0; j<array[i].length; j++){
        if (isBlock == false){
            fill(b_s.get_ten()[array[i][j]].getRgb()[0],b_s.get_ten()[array[i][j]].getRgb()[1],b_s.get_ten()[array[i][j]].getRgb()[2]);
            //print(bs.get_ten().length);
            rect(x+(30*j),y+(30*i),25,25,10);
        }else{
          if (array[i][j]== 0){
            noFill();
            noStroke();
          }
          else{
          fill(b_s.get_ten()[array[i][j]].getRgb()[0],b_s.get_ten()[array[i][j]].getRgb()[1],b_s.get_ten()[array[i][j]].getRgb()[2]);
          rect(x+(30*j),y+(30*i),25,25,10);}
        }
      }
    }
  }
}
