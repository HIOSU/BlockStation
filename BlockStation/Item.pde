class Item {
  PImage rotateImage;
  PImage stopImage;
  PImage breakOneLineImage;
  PImage speedUpImage;
  PImage speedDownImage;

  String nowItem = "";
  
  void setItemImage(){
    
  }
  void setNowItem(){
    int a = (int)random(2);
    
  }
  void runItem(){
    if (nowItem.equals("rotate"){
    }
  }
  
  Block rotateBlock(Block block, int num) {
    if (num == 1) {
      rotateImage = loadImage("data/Image/rot90L");
    } else if (num == 2) {
      rotateImage = loadImage("data/Image/rot180");
    } else if (num == 3) {
      rotateImage = loadImage("data/Image/rot90R");
    } 
    return block.rot(num);
  }
  
  int[][] breakOneLine(int[][] array){
    
     int a= (int)random(array[0].length);
     int b = (int) random(2);
     for (int i = 0; i < array.length; i++){
       if (b == 0){
         array[a][i] = 0;
       } if (b == 1){
         array[i][a] = 0;
       }
     }
    return new int[][] {{}};
  }
  
  
}
