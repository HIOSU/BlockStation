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
  parseFile();
  noStroke();
}

void exit() {
  output = createWriter("data/Save/save.txt");
  output.println(tentris.maxscore);
  output.println(tetris.maxscore);
  output.println(stage.cs());
  output.flush();
  output.close();
  super.exit();
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
void parseFile() {
  BufferedReader reader = createReader("data/Save/save.txt");
  String line = "";
  String[] a = {};
  try {
    while ((line = reader.readLine()) != null) {
      a = append(a, line);
    }
  }
  catch (IOException e) {
    e.printStackTrace();
  }
  tentris.maxscore = parseInt(a[0]);
  tetris.maxscore = parseInt(a[1]);
  int sta = parseInt(a[2]);
  if (sta >= 2) {
    stage.stagecount2 = true;
  } 
  if (sta >= 3) {
    stage.stagecount3 = true;
  }
  if (sta >= 4) {
    stage.stagecount4 = true;
  }
  if (sta >= 5) {
    stage.stagecount5 = true;
  }
}
