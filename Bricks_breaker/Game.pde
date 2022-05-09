int pxpos = 600;
int pypos = 810;
int bxpos = 500;
int bypos = 650;

void game() {
  background(0);
  frameRate(200);

  ellipseMode(CENTER);
  ellipse( pxpos, pypos, 150, 150);
  ellipse( bxpos, bypos, 20, 20);

  bxpos += vx;
  bypos += vy;


  double d = distance(bxpos, bypos, pxpos, pypos);

  if (d < 85) {
    vx = (bxpos - pxpos)/20;
    vy = (bypos - pypos)/20;
  }

  if ( right == true) {
    if ( pxpos < 1125) {
      pxpos += 3;
    }
  }

  if ( left == true) {
    if ( pxpos > 75) {
      pxpos -= 3;
    }
  }

  if (bxpos > 1185) {
    vx *= -1;
  }

  if (bxpos < 15) {
    vx *= -1;
  }

  if (bypos > 785) {
    vy = vy * -1;
  }

  if (bypos < 15) {
    vy = vy * -1;
  }

  if ( vy == 0) {
    vy = 1;
  }

  if ( vx == 0) {
    vx = 1;
  }


  int i = 0;
  
  while (i < n) {
    if (alive[i] == true){
      
      circle(x[i], y[i], brickd);
      if (dist(bxpos, bypos, x[i], y[i]) < 40) {
        vx = (bxpos - x[i])/10;
        vy = (bypos - y[i])/10;
        alive[i] = false;
      }
    }
    i = i+1;
  }
}
