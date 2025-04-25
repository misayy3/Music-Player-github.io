// Text: Dynamic
//
//Global Variables
PFont appFont;
float fontSize;
String Title = "Misa's Amazing Music Player";
//
float TitleX, TitleY, TitleWidth, TitleHeight;
//
void setup() {
//Display
size(700, 500);
int appWidth = width;
int appHeight = height;
int shorterSide = ( appWidth >= appHeight ) ? appHeight : appWidth ; //Landscape, Portrait, & Square
//
/*Fonts from OS
println ("Start of Console");
String[] fontList = PFont.list(); 
printArray(fontList); 
*/
fontSize = shorterSide;
appFont = createFont("Times New Roman Bold", fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known bug (not loadFont() )
//
//Population
TitleX = appWidth * 1/4;
TitleY = appHeight * 1/4;
TitleWidth = appWidth * 1/2;
TitleHeight = appHeight * 1/10;
//
//DIVs
rect(TitleX, TitleY, TitleWidth, TitleHeight);
//
//Font Size Algorithm
float TimesNewRomanBoldAspectRatio = 1.04;
fontSize = TitleHeight * TimesNewRomanBoldAspectRatio;
textFont(appFont, fontSize);
println( textWidth(Title), TitleWidth );
while ( textWidth(Title) > TitleWidth ) {
  fontSize = fontSize * 0.99;
  textFont(appFont, fontSize);
  println( "Step:", textWidth(Title), TitleWidth );
}
//
// Code before Drawing Text
color pinkBlossom = #F7B9D4;
fill(pinkBlossom);
textAlign (CENTER, CENTER);
//Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(appFont, fontSize);
//Drawing Text
text(Title, TitleX, TitleY, TitleWidth, TitleHeight);
color white = #FFFFFF;
fill(white);
//
} //End Setup
//
void draw() {
  //EMPTY Draw
} //End Draw
//
void mousePressed() {} // End Mouse Pressed
//
void keyPressed() {} //End Key Pressed
//
//End of MAIN
