// Array of two Z classes.
Z[] myZ = new Z[2];

// Global variables.
float sizeText;
float sleepyTime_x;
float sleepyTime_y;
int sleepyTimeTrans = 200;

float z_x;
float z_y;
float z_moveX;
float z_moveY;

int color1 = #F52331;
int color2 = #F123F5;
int color3 = #FCFC21;
int color4 = #000000;

void setup() {
  size(1000, 500);

  // Creates the two Z classes. random() is used to get a random spawn point.
  myZ[0] = new Z(int(random(width)), int(random(height)), -int(random(width/200, width/150)), int(random(height/200, height/150)), color1);
  myZ[1] = new Z(int(random(width)), int(random(height)), int(random(width/200, width/150)), -int(random(height/200, height/150)), color2);

  sizeText = width/20;
  sleepyTime_x = width/2;
  sleepyTime_y = height/2;
}

void draw() {
  background(color4);

  // Draws the two Z classes using class functions. Notice tail1() and tail2() makes two different tails.
  myZ[0].display();
  myZ[0].moveAndBounce();
  myZ[0].tail1();

  myZ[1].display();
  myZ[1].moveAndBounce();
  myZ[1].tail2();

  // Draws the font Sleepy Time
  textSize(sizeText);
  textAlign(CENTER);
  fill(color3, sleepyTimeTrans);
  text("Sleepy time", sleepyTime_x, sleepyTime_y);
}
