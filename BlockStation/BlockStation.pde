Event  event;
Stage stage = new Stage();
Screen screen = new Screen();
Tetris tetris = new Tetris();
Tentris tentris = new Tentris();
Block_Storage b_s = new Block_Storage();

PImage imo;
PImage ite;
PImage iten;
PImage iback;
PImage ihelp;

PFont basic;
PFont mainText;  

String Screencount = "main";
int helpcount = 0;
int cleared_stage = 0;

boolean CheckM = false;

PrintWriter output;

void settings() {
  size(1000, 500);
  //  fullScreen();
}

void setup()
{
  b_s.storage();
  stage.stage();
  tetris.tet_block();
  noStroke();
}

void exit() {
  output = createWriter("save.txt");
  output.println(tentris.maxscore);
  output.println(tetris.maxscore);
  output.flush();
  output.close();
} 

void draw()
{
  now_screen();
  change_cursor();
}

void now_screen() {
  if (Screencount.equals("main")) {
    screen.Gamemain();
  } else if (Screencount.equals("select") && helpcount == 0) {
    screen.Gameselection();
  } else if (Screencount.equals("select") && helpcount == 1) {
    screen.Gameselection();
    rect(350, 100, 300, 300);
  } else if (Screencount.equals("select") && helpcount == 2) {
    screen.Gameselection();
    rect(350, 100, 300, 300);
  } else if (Screencount.equals("select") && helpcount == 3) {
    screen.Gameselection();
    rect(350, 100, 300, 300);
  } else if (Screencount.equals("stage")) {
    stage.Mstage();
  } else if (Screencount.equals("stage1")) {
    stage.Chapter1();
  } else if (Screencount.equals("stage2")) {
    stage.Chapter2();
  } else if (Screencount.equals("stage3")) {
    stage.Chapter3();
  } else if (Screencount.equals("stage4")) {
    stage.Chapter4();
  } else if (Screencount.equals("stage5")) {
    stage.Chapter5();
  } else if (Screencount.equals("tentris")) {
    tentris.run_tentris();
  } else if (Screencount.equals("tetris")) {
    tetris.run_tetris();
  }
}
