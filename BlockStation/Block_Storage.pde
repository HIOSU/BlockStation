class Block_Storage{
  Block[] mo;
  Block[] te;
  Block[] ten;
  void storage(){
    this.mo = new Block[0];
    
    this.te = new Block[0];

    this.ten = new Block[0];
    int[] co = {255,255,255};
    mo = (Block[])append(mo, new Block(new int[][] {{}}, co));
    te = (Block[])append(te, new Block(new int[][] {{}}, co));
    ten = (Block[])append(ten, new Block(new int[][] {{}}, co));
    makeBlock();
  }
  void makeBlock()
  {
    //1
    int [][] q = {{0,0,0,0,0},{0,0,0,0,0},{0,0,1,0,0},{0,0,0,0,0},{0,0,0,0,0}};
     int[] co = {153,204,255};
     ten = (Block[])append(ten, new Block( q, co ));
     
     //2
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{0,0,1,1,0},{0,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {255,153,000};
     ten = (Block[])append(ten, new Block( q, co ));
     
     //3
     q = new int[][]{{0,0,0,0,0},{0,0,0,0,0},{0,1,1,1,0},{0,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {255,204,000};
     ten = (Block[])append(ten, new Block( q, co ));
     
     q = new int[][]{{0,0,0,0,0},{0,0,0,0,0},{0,1,1,0,0},{0,0,1,0,0},{0,0,0,0,0}};
     co = new int[] {051,000,204};
     ten = (Block[])append(ten, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     //4
     q = new int [][] {{0,0,0,0,0},{0,0,0,0,0},{0,1,1,1,1},{0,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {204,153,000};
     ten = (Block[])append(ten, new Block( q, co ));
     te = (Block[])append(te, new Block( q, co ));
  
     q = new int [][] {{0,0,0,0,0},{0,0,0,0,0},{0,1,1,1,0},{0,0,1,0,0},{0,0,0,0,0}};
     co = new int[] {051,000,255};
     te = (Block[])append(te, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int [][] {{0,0,0,0,0},{0,0,0,0,0},{0,1,1,0,0},{0,0,1,1,0},{0,0,0,0,0}};
     co = new int[] {051,000,255};
     te = (Block[])append(te, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int [][] {{0,0,0,0,0},{0,0,0,0,0},{0,0,1,1,0},{0,1,1,0,0},{0,0,0,0,0}};
     co = new int[] {051,000,255};
     te = (Block[])append(te, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int [][] {{0,0,0,0,0},{0,0,0,0,0},{0,1,1,0,0},{0,1,1,0,0},{0,0,0,0,0}};
     co = new int[] {255,000,051};
     ten = (Block[])append(ten, new Block( q, co ));
     te = (Block[])append(te, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int [][] {{0,0,0,0,0},{0,0,1,0,0},{0,0,1,1,1},{0,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {204,255,000};
     te = (Block[])append(te, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int [][] {{0,0,0,0,0},{0,0,1,0,0},{1,1,1,0,0},{0,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {255,000,204};
     te = (Block[])append(te, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int [][] {{0,0,0,0,0},{0,0,0,0,0},{0,1,1,0,0},{0,0,1,1,0},{0,0,0,0,0}};
     co = new int[] {000,051,102};
     te = (Block[])append(te, new Block( q, co ));   
     
     q = new int [][] {{0,0,0,0,0},{0,0,0,0,0},{0,0,1,1,0},{0,1,1,0,0},{0,0,0,0,0}};
     co = new int[] {000,051,051};
     te = (Block[])append(te, new Block( q, co ));
     
     //5
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{1,1,1,1,1},{0,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {000,102,102};
     ten = (Block[])append(ten, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{1,1,1,0,0},{0,0,1,0,0},{0,0,1,0,0}};
     co = new int[] {000,153,153};
     ten = (Block[])append(ten, new Block( q, co ));
     mo = (Block[])append(mo, new Block( q, co ));
     te = (Block[])append(te, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,1,0,0},{0,0,1,0,0},{0,1,1,1,0},{0,0,0,0,0}};
     co = new int[] {000,204,255};
     mo = (Block[])append(mo, new Block( q, co ));
     
  
     q = new int[][] {{0,0,0,0,0},{0,1,0,1,0},{0,1,1,1,0},{0,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {255,153,000};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{1,1,1,1,0},{0,0,0,1,0},{0,0,0,0,0}};
     co = new int[] {255,153,000};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{1,1,1,1,0},{1,0,0,0,0},{0,0,0,0,0}};
     co = new int[] {255,204,255};
     mo = (Block[])append(mo, new Block( q, co ));
     
     
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{0,1,1,1,0},{0,0,0,1,1},{0,0,0,0,0}};
     co = new int[] {255,153,153};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{0,1,1,1,0},{1,1,0,0,0},{0,0,0,0,0}};
     co = new int[] {255,102,102};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,1,1,0},{0,1,1,0,0},{0,0,1,0,0},{0,0,0,0,0}};
     co = new int[] {153,102,204};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,1,1,0,0},{0,0,1,1,0},{0,0,1,0,0},{0,0,0,0,0}};
     co = new int[] {153,102,204};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,1,1,0},{0,0,1,1,0},{0,0,1,0,0},{0,0,0,0,0}};
     co = new int[] {153,204,255};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,1,1,0},{0,0,1,1,0},{0,0,0,1,0},{0,0,0,0,0}};
     co = new int[] {102,204,204};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,1,0,0,0},{0,1,1,0,0},{0,0,1,1,0},{0,0,0,0,0}};
     co = new int[] {153,051,051};
     mo = (Block[])append(mo, new Block( q, co ));
     
      q = new int[][] {{0,0,0,0,0},{0,0,0,1,0},{0,0,1,1,0},{0,1,1,0,0},{0,0,0,0,0}};
      co = new int[] {255,0000,153};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,1,0,0},{0,1,1,1,0},{0,0,1,0,0},{0,0,0,0,0}};
     co = new int[] {000,153,255};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{1,1,1,1,0},{0,0,1,0,0},{0,0,0,0,0}};
     co = new int[] {153,153,153};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,0,0,0},{1,1,1,1,0},{0,1,0,0,0},{0,0,0,0,0}};
     co = new int[] {051,153,051};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,1,1,0,0},{0,0,1,0,0},{0,0,1,1,0},{0,0,0,0,0}};
     co = new int[] {204,000,255};
     mo = (Block[])append(mo, new Block( q, co ));
     
     q = new int[][] {{0,0,0,0,0},{0,0,1,1,0},{0,0,1,0,0},{0,1,1,0,0},{0,0,0,0,0}};
     co = new int[] {000,153,151};
     mo = (Block[])append(mo, new Block( q, co ));
     
    //9
     q = new int[][] {{0,0,0,0,0},{0,1,1,1,0},{0,1,1,1,0},{0,1,1,1,0},{0,0,0,0,0}};
     co = new int[] {153,000,151};
     mo = (Block[])append(mo, new Block( q, co ));
   }
   
   Block[] get_mo(){
     return this.mo;
   }
   
   Block[] get_te(){
     return this.te;
   }
   
   Block[] get_ten(){
     return this.ten;
   }
 }
