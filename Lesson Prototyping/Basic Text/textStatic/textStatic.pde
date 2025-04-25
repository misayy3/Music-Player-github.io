// Text: Dynamic
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //Zero
//
PFont appFont;
float fontSize;
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
minim = new Minim(this);
String musicPathway = "Music/";
String song = "Rocket Love - Frank Ocean";
String fileExtension_mp3 = ".mp3";
String musicDirectory = "../../../" + musicPathway;
String file = musicDirectory + song + fileExtension_mp3;
println( file );
playList[ currentSong ] = minim.loadFile( file );
playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
playList[currentSong].play();

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
println( textWidth(playListMetaData[currentSong].title()), TitleWidth );
while ( textWidth(playListMetaData[currentSong].title()) > TitleWidth ) {
  fontSize = fontSize * 0.99;
  textFont(appFont, fontSize);
  println( "Step:", textWidth(playListMetaData[currentSong].title()), TitleWidth );
}
//
// Code before Drawing Text
color pinkBlossom = #F7B9D4;
fill(pinkBlossom);
textAlign (CENTER, CENTER);
//Values: [Left | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(appFont, fontSize);
//Drawing Text
text(playListMetaData[currentSong].title(), TitleWidth, TitleHeight);
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
