class Item {
  PImage nowImage;

  int num = 0;
  String nowItem = "";


  void setItemImage() {
    if (nowItem.equals("rotate")) {
      num = (int)random(1, 4);
      if (num == 1) {
        nowImage = loadImage("data/Image/rot90L.png");
      } else if (num == 2) {
        nowImage = loadImage("data/Image/rot180.png");
      } else if (num == 3) {
        nowImage = loadImage("data/Image/rot90R.png");
      }
    } else if (nowItem.equals("breakLine")) {
      nowImage = loadImage("data/Image/line.png");
    } else if (nowItem.equals("breakAll")) {
      nowImage = loadImage("data/Image/all.png");
    }
  }
  void setNowItem() {
    int a = (int)random(3);
    if (a == 0) {
      nowItem = "rotate";
    } else if (a == 1) {
      nowItem = "breakLine";
    } else if (a == 2) {
      nowItem = "breakAll";
    }
    setItemImage();
  }
  void runItem() {
    if (Screencount.equals("tentris")) {
      if (nowItem.equals("rotate")) {
        tentris.nextBlock = rotateBlock(tentris.nextBlock, num);
      } else if (nowItem.equals("breakLine")) {
        tentris.tentenArray = breakOneLine(tentris.tentenArray);
      } else if (nowItem.equals("breakAll")){
        tentris.tentenArray = breakAll(tentris.tentenArray);
      }
    }
  }


  Block rotateBlock(Block block, int num) {
    return block.rot(num);
  }

  int[][] breakOneLine(int[][] array) {
    int a= (int)random(array[0].length);
    int b = (int) random(2);
    for (int i = 0; i < array.length; i++) {
      if (b == 0) {
        array[a][i] = 0;
      } 
      if (b == 1) {
        array[i][a] = 0;
      }
    }

    return array;
  }
  int[][] breakAll(int[][] array) {
    for (int i = 0; i< array.length; i++) {
      for (int j = 0; j< array[i].length; j++) {
        array[i][j] = 0;
      }
    }
    return array;
  }
}
