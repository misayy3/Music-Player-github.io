// Dynamic not static
//
//Library - Minim
//
//Global Variables
//
float X, Y, Width, Height;
float topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight;
float quitX, quitY, quitWidth, quitHeight;

void setup() {
  fullScreen(); //displayWidth, displayHeight

  int appWidth = displayWidth;
  int appHeight = displayHeight;
  
  quitX = appWidth * 0.625;
  quitY = appHeight * 0.625;
  quitWidth = appWidth * 0.0625;
  quitHeight = appHeight * 0.0625;
  topDisplayX = appWidth * 0.25;
  topDisplayY = appHeight * 0.25;
  topDisplayWidth = appWidth * 0.50;
  topDisplayHeight = appHeight * 0.30;

  rect(topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight);
  rect(quitX, quitY, quitWidth, quitHeight);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);

  //  
 
}
//
void draw() {}
//
void mousePressed() {}
//
void keyPressed() {}
//
//End MAIN Program
