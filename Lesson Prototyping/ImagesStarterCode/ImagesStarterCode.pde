//Dynamic Programming
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float imageDivX, imageDivY, imageDivWidth, imageDivHeight;
//
PImage myFirstImage;
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population
  imageDivX = appWidth*1/4;
  imageDivY = appHeight*0;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight;
  //
  //Image Aspect Ratio Algorithm
  String myFirstImagePathway = "\\FS-052\studuser$\Gr10\m.yousif3\My Documents\GitHub\Music-Player-github.io\Images 2\ImagesStarterCode\spotifylogo.png";
  myFirstImage = loadImage( myFirstImagePathway );
  //
  //DIV
  rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
  //
  //Prototype Images
  image( myFirstImage, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
