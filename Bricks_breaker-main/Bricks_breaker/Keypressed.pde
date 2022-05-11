void keyPressed() {

  if (key == CODED) {
    if ( keyCode == RIGHT) {
      right = true;
      left = false;
    }

    if ( keyCode == LEFT) {
      left = true;
      right = false;
    }
  }
}

void keyReleased() {
  if ( right == true) {
    right = false;
  }

  if ( left == true) {
    left = false;
  }
}
