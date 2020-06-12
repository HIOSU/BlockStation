class Block {
  int[][] array;
  int[] blockArea = {0, 0};
  int[] rgb;
  int x_f = 0;
  int y_f = 0;
  Block(int[][] array, int[] rgb) {
    this.array = array;
    this.rgb = rgb;
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
;
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
    return new Block(barray, this.rgb);
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
}
