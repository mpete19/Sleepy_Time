class Z {

  // Global varibles.
  int x;
  int y;
  int moveX;
  int moveY;
  int fill;

  int tailN = 10;
  int[] tail1X = new int[tailN];
  int[] tail1Y = new int[tailN];
  int tail1Trans = 200;

  int[] tail2X = new int[tailN];
  int[] tail2Y = new int[tailN];
  int tail2Trans = 50;

  // Sets up the template for the Z class. X-position, Y-position, X-movement, Y-movement and color.
  Z(int temp_x, int temp_y, int temp_moveX, int temp_moveY, int temp_fill) {
    x = temp_x;
    y = temp_y;
    moveX = temp_moveX;
    moveY = temp_moveY;
    fill = temp_fill;
  }

  // This function draws a Z on the canvas.
  void display() {

    fill(fill);
    textAlign(CENTER);
    text("Z", x, y);
  }

  //  This function makes the Z move with a given speed on the X and Y axis's. It also makes the Z bounce if it reach any of the screen boundaries.
  void moveAndBounce() {

    x = x + moveX;
    y = y + moveY;

    if (x < 0 || width < x) {
      moveX = moveX * (-1);
    } 

    if (y < 0 || height < y) {
      moveY  = moveY * (-1);
    }
  }

  // This function adds a tail to the Z which gets more and more transparant.
  void tail1() {

    for (int i = tailN-1; i > 0; i--) {
      tail1X[i] = tail1X[i-1];
      tail1Y[i] = tail1Y[i-1];
    }

    tail1X[0] = x;
    tail1Y[0] = y;

    for (int i = 1; i < tailN; i++) {
      fill(fill, tail1Trans/i);
      textAlign(CENTER);
      text("Z", tail1X[i], tail1Y[i]);
    }
  }

  // This function adds a tail to the Z which has a consistent transparency.
  void tail2() {

    for (int i = tailN-1; i > 0; i--) {
      tail2X[i] = tail2X[i-1];
      tail2Y[i] = tail2Y[i-1];
    }

    tail2X[0] = x;
    tail2Y[0] = y;

    for (int i = 1; i < tailN; i++) {
      fill(fill, tail2Trans);
      textAlign(CENTER);
      text("Z", tail2X[i], tail2Y[i]);
    }
  }
}
