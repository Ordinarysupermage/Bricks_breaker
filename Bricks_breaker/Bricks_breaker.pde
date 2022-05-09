//Jerry Feng
//2022-05-05
//2-3


int mode;
final int intro = 1;
final int menu = 2;
final int game = 3;
final int gameover = 4;
final int options = 5;
boolean win = false;

float vx = 2;
float vy = 2;

boolean left, right;

int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;
int tempx, tempy;

color dirt = #9b7653;
color grass = #7CFC00;
color ice = #e5e5e0;
color cyan = #00FFFF;

//int c = random(2)
//if (c==1){mycolor = dirt} else { mycolor = grass}
// switch (c){
//  case(0):
//  mycolor = dirt;
//  break;
//  case(1):
//  mycolor = grass;
//  break;
//

//
// }
void setup() {
  size(1200, 800);
  mode = game;


  brickd = 60;
  n = 39;
  x = new int[n];
  y = new int[n];
  tempx = 70;
  tempy = 70;
  alive = new boolean[n];
  
  int i = 0;
  while ( i < n) {
    x[i] = tempx;
    y[i] = tempy;
    tempx += 90;
    alive[i] = true;
    if ( tempx > width - 30) {
      tempy += 80;
      tempx = 70;
    }
    i += 1;
  }
}

void draw() {








  if ( mode == intro) {
    intro();
  } else if (mode == menu) {
    menu();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == options) {
    options();
  }
}
