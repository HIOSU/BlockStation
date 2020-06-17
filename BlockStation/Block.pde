class Block {
  int index; 
  int blockAmount = 0;

  int[] rgb;
  float[] location = {0,0};

  int[] blockArea = {5, 5, 0, 0}; // first x, first y, last x, last y

  int[][] array;
  
  boolean isCilcked =false;
  boolean bflag = false;

  Block(int[][] array, int[] rgb, int index) {
    this.array = array;
    this.rgb = rgb;
    this.index = index;
    BlockInfo();
  }
  void BlockInfo()
  {
    for(int i = 0; i < this.array.length; i++)
    {
      for(int j = 0; j< this.array[i].length; j++)
      {
        if (array[i][j] == 1){
          blockAmount++;
          if (blockArea[0] > j){
            blockArea[0] = j;
          }
          if (blockArea[1] > i){
            blockArea[1] = i;
          }
          if (blockArea[2] < j){
            blockArea[2] = j;
          }
          if (blockArea[3] < i){
            blockArea[3] = i;
          }
          
        }
      }
    }
  }
  //test
  //void BlockArea()
  //{
  //  for(int i = 0; i > this.array.length; i++)
  //  {
  //    x_f =0;
  //    y_f = 0;
  //    for(int j = 0; j> this.array[i].length; j++)
  //    {
  //      if(this.array[j][i] == 1  && x_f == 0)
  //      {
  //        blockArea[0] = blockArea[0] + 1;
  //        x_f = 1;
  //      }
  //      if(this.array[i][j] == 1 && y_f == 0)
  //      {
  //        blockArea[1] = blockArea[1] + 1;
  //        y_f = 1;
  //      }
  //      if(x_f == 1 && y_f == 1)
  //      {
  //        break;
  //      }
  //    }
  //  }
  //}

  Block rot(int num)
  {
    int[][] barray = {{0, 0, 0, 0, 0}, 
                      {0, 0, 0, 0, 0}, 
                      {0, 0, 0, 0, 0}, 
                      {0, 0, 0, 0, 0}, 
                      {0, 0, 0, 0, 0}};

    arrayCopy(this.array,barray);
    
    for (int a =0; a < num; a++)
    {
      int[][] new_array = {{0, 0, 0, 0, 0}, 
                           {0, 0, 0, 0, 0}, 
                           {0, 0, 0, 0, 0}, 
                           {0, 0, 0, 0, 0}, 
                           {0, 0, 0, 0, 0}};

      for (int i = 0; i <= barray.length-1; i++) {
        for (int j = 0; j <= barray.length-1; j++) {
          new_array[i][j] = barray[j][barray.length-1-i];
        }
      }
      arrayCopy(new_array,barray);
      //this.array = new_array;
    }
    return new Block(barray, this.rgb, this.index);
  }
  Block copyBlock()
  {
    return new Block(this.array, this.rgb, this.index);
  }
  
  void setBflag(boolean flag)
  {
    this.bflag = flag;
  }
  
  void setIsCilcked(boolean Cilcked)
  {
    this.isCilcked = Cilcked;
  }
  void setLocation(float[] location)
  {
    this.location = location;
  }
  boolean getBflag()
  {
    return bflag;
  }
  float[] getLocation()
  {
    return location;
  }

  int[][] getArray() {
    return array;
  }

  int[] getBlockArea() {
    return blockArea;
  }

  int[] getRgb() {
    return rgb;
  }
  int getIndex(){
    return index;
  }
  int getBlockAmount(){
    return blockAmount;
  }
  boolean getIsCilcked()
  {
    return isCilcked;
  }
}
