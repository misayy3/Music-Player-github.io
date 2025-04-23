// Text: Static
//
String Title = "Misa's Super Amazing Cool Music Player";
//
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
float fontSize = shorterSide;
PFont TitleFont = createFont("Times New Roman Bold", fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known bug
//
//Population
float TitleX, TitleY, TitleWidth, TitleHeight;
TitleX = appWidth * 1/4;
TitleY = appHeight * 1/4;
TitleWidth = appWidth * 1/2;
TitleHeight = appHeight * 1/10;
//
//DIVs
rect(TitleX, TitleY, TitleWidth, TitleHeight);
//
//Font Size Algorithm
fontSize = TitleHeight+3;
//
color pinkBlossom = #F7B9D4;
fill(pinkBlossom);
textAlign (CENTER, CENTER);
//Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(TitleFont, fontSize);
text(Title, TitleX, TitleY, TitleWidth, TitleHeight);
color white = #FFFFFF;
fill(white);


//text(Title, TitleX, TitleY, TitleWidth, TitleHeight);
