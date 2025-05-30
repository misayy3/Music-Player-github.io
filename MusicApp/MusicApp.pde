//Library - Minim
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
Minim minim;
int numberOfSongs = 6;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
//DIV Variables
//
float QuitX, QuitY, QuitWidth, QuitHeight;
float SongImageX, SongImageY, SongImageWidth, SongImageHeight;
float SongTitleX, SongTitleY, SongTitleWidth, SongTitleHeight;
float SongArtistX, SongArtistY, SongArtistWidth, SongArtistHeight;
float TimeBarX, TimeBarY, TimeBarWidth, TimeBarHeight;
float PositionOfTheSongX, PositionOfTheSongY, PositionOfTheSongWidth, PositionOfTheSongHeight;
float TimeRemainingX, TimeRemainingY, TimeRemainingWidth, TimeRemainingHeight;
float TotalTimeOfSongX, TotalTimeOfSongY, TotalTimeOfSongWidth, TotalTimeOfSongHeight;
float FastReverseX, FastReverseY, FastReverseWidth, FastReverseHeight;
float LoopOnceX, LoopOnceY, LoopOnceWidth, LoopOnceHeight;
float LoopInfiniteX, LoopInfiniteY, LoopInfiniteWidth, LoopInfiniteHeight;
float PreviousX, PreviousY, PreviousWidth, PreviousHeight;
float MuteX, MuteY, MuteWidth, MuteHeight;
float PauseX, PauseY, PauseWidth, PauseHeight;
float PlayX, PlayY, PlayWidth, PlayHeight;
float StopX, StopY, StopWidth, StopHeight;
float NextX, NextY, NextWidth, NextHeight;
float ShuffleX, ShuffleY, ShuffleWidth, ShuffleHeight;
float FastForwardX, FastForwardY, FastForwardWidth, FastForwardHeight;
//
//Button Variables
//
float QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight;
float SongImageButtonX, SongImageButtonY, SongImageButtonWidth, SongImageButtonHeight;
float SongTitleButtonX, SongTitleButtonY, SongTitleButtonWidth, SongTitleButtonHeight;
float SongArtistButtonX, SongArtistButtonY, SongArtistButtonWidth, SongArtistButtonHeight;
float TimeBarButtonX, TimeBarButtonY, TimeBarButtonWidth, TimeBarButtonHeight;
float PositionOfTheSongButtonX, PositionOfTheSongButtonY, PositionOfTheSongButtonWidth, PositionOfTheSongButtonHeight;
float TimeRemainingButtonX, TimeRemainingButtonY, TimeRemainingButtonWidth, TimeRemainingButtonHeight;
float TotalTimeOfSongButtonX, TotalTimeOfSongButtonY, TotalTimeOfSongButtonWidth, TotalTimeOfSongButtonHeight;
float FastReverseButtonX, FastReverseButtonY, FastReverseButtonWidth, FastReverseButtonHeight;
float LoopOnceButtonX, LoopOnceButtonY, LoopOnceButtonWidth, LoopOnceButtonHeight;
float LoopInfiniteButtonX, LoopInfiniteButtonY, LoopInfiniteButtonWidth, LoopInfiniteButtonHeight;
float PreviousButtonX, PreviousButtonY, PreviousButtonWidth, PreviousButtonHeight;
float MuteButtonX, MuteButtonY, MuteButtonWidth, MuteButtonHeight;
float PauseButtonX, PauseButtonY, PauseButtonWidth, PauseButtonHeight;
float PlayButtonX, PlayButtonY, PlayButtonWidth, PlayButtonHeight;
float StopButtonX, StopButtonY, StopButtonWidth, StopButtonHeight;
float NextButtonX, NextButtonY, NextButtonWidth, NextButtonHeight;
float ShuffleButtonX, ShuffleButtonY, ShuffleButtonWidth, ShuffleButtonHeight;
float FastForwardButtonX, FastForwardButtonY, FastForwardButtonWidth, FastForwardButtonHeight;
//
//Image Variables
//
PImage myFirstImage, mySecondImage;
float imageWidthChanged_First, imageHeightChanged_First;
float imageWidthChanged_Second, imageHeightChanged_Second;
//
float paddingsmall = 0.21;
float paddingbig = 0.29;
PFont appFont;
float fontSize;
//
void setup() {
  fullScreen(); //displayWidth, displayHeight
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  background(#FFD8E7);
  int appShortSide = ( appWidth < appHeight ) ? appWidth : appHeight ;
  //
  //Music Loading
  //
  minim = new Minim(this);
  String musicPathway = "Music/";
  String CloseToYou = "Close To You";
  String Math = "Math";
  String Nights = "Nights";
  String RocketLove = "Rocket Love";
  String SelfControl = "Self Control";
  String SongsForWomen = "Songs for Women";
  String fileExtension_mp3 = ".mp3";
  String musicDirectory = "../../../" + musicPathway;
  String file = musicDirectory + CloseToYou + fileExtension_mp3;
  //
  /*
  currentSong=0;
  playList[ currentSong ] = minim.loadFile( file );
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + CloseToYou + fileExtension_mp3; 
  playList[ currentSong ] = minim.loadFile( file );
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + Math + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + Nights + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + RocketLove + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + SelfControl + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + SongsForWomen + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  */
  //
  //Rectangle Numbers
  //
  QuitX = appWidth * 0.9375;
  QuitY = appHeight * 0.0;
  QuitWidth = appWidth * 0.0625;
  QuitHeight = appHeight * 0.12;
  SongImageX = appWidth * 0.0625;
  SongImageY = appHeight * 0.1875;
  SongImageWidth = appWidth * 0.375;
  SongImageHeight = appHeight * 0.60;
  SongTitleX = appWidth * 0.50;
  SongTitleY = appHeight * 0.25;
  SongTitleWidth = appWidth * 0.1875;
  SongTitleHeight = appHeight * 0.09375;
  SongArtistX = appWidth * 0.50;
  SongArtistY = appHeight * 0.36;
  SongArtistWidth = appWidth * 0.125;
  SongArtistHeight = appHeight * 0.0625;
  TimeBarX = appWidth * 0.50;
  TimeBarY = appHeight * 0.4453125;
  TimeBarWidth = appWidth * 0.453125;
  TimeBarHeight = appHeight * 0.0325;
  PositionOfTheSongX = appWidth * 0.50;
  PositionOfTheSongY = appHeight * 0.50;
  PositionOfTheSongWidth = appWidth * 0.0625;
  PositionOfTheSongHeight = appHeight * 0.03125;
  TimeRemainingX = appWidth * 0.875;
  TimeRemainingY = appHeight * 0.50;
  TimeRemainingWidth = appWidth * 0.03125;
  TimeRemainingHeight = appHeight * 0.03125;
  TotalTimeOfSongX = appWidth * 0.921875;
  TotalTimeOfSongY = appHeight * 0.50;
  TotalTimeOfSongWidth = appWidth * 0.03125;
  TotalTimeOfSongHeight = appHeight * 0.03125;
  FastReverseX = appWidth * 0.50;
  FastReverseY = appHeight * 0.5625;
  FastReverseWidth = appWidth * 0.03125;
  FastReverseHeight = appHeight * 0.046875;
  LoopOnceX = appWidth * 0.54688;
  LoopOnceY = appHeight * 0.5625;
  LoopOnceWidth = appWidth * 0.015625;
  LoopOnceHeight = appHeight * 0.046875;
  LoopInfiniteX = appWidth * 0.5625;
  LoopInfiniteY = appHeight * 0.5625;
  LoopInfiniteWidth = appWidth * 0.015625;
  LoopInfiniteHeight = appHeight * 0.046875;
  PreviousX = appWidth * 0.59375;
  PreviousY = appHeight * 0.5625;
  PreviousWidth = appWidth * 0.03125;
  PreviousHeight = appHeight * 0.046875;
  MuteX = appWidth * 0.640625;
  MuteY = appHeight * 0.5625;
  MuteWidth = appWidth * 0.03125;
  MuteHeight = appHeight * 0.046875;
  PauseX = appWidth * 0.6875;
  PauseY = appHeight * 0.5625;
  PauseWidth = appWidth * 0.03125;
  PauseHeight = appHeight * 0.046875;
  PlayX = appWidth * 0.734375;
  PlayY = appHeight * 0.5625;
  PlayWidth = appWidth * 0.03125;
  PlayHeight = appHeight * 0.046875;
  StopX = appWidth * 0.78125;
  StopY = appHeight * 0.5625;
  StopWidth = appWidth * 0.03125;
  StopHeight = appHeight * 0.046875;
  NextX = appWidth * 0.828125;
  NextY = appHeight * 0.5625;
  NextWidth = appWidth * 0.03125;
  NextHeight = appHeight * 0.046875;
  ShuffleX = appWidth * 0.875;
  ShuffleY = appHeight * 0.5625;
  ShuffleWidth = appWidth * 0.03125;
  ShuffleHeight = appHeight * 0.046875;
  FastForwardX = appWidth * 0.921875;
  FastForwardY = appHeight * 0.5625;
  FastForwardWidth = appWidth * 0.03125;
  FastForwardHeight = appHeight * 0.046875;
  //
  rect(QuitX, QuitY, QuitWidth, QuitHeight);
  rect(SongImageX, SongImageY, SongImageWidth, SongImageHeight);
  rect(SongTitleX, SongTitleY, SongTitleWidth, SongTitleHeight);
  rect(SongArtistX, SongArtistY, SongArtistWidth, SongArtistHeight);
  rect(TimeBarX, TimeBarY, TimeBarWidth, TimeBarHeight);
  rect(PositionOfTheSongX, PositionOfTheSongY, PositionOfTheSongWidth, PositionOfTheSongHeight);
  rect(TimeRemainingX, TimeRemainingY, TimeRemainingWidth, TimeRemainingHeight);
  rect(TotalTimeOfSongX, TotalTimeOfSongY, TotalTimeOfSongWidth, TotalTimeOfSongHeight);
  rect(FastReverseX, FastReverseY, FastReverseWidth, FastReverseHeight);
  rect(LoopOnceX, LoopOnceY, LoopOnceWidth, LoopOnceHeight);
  rect(LoopInfiniteX, LoopInfiniteY, LoopInfiniteWidth, LoopInfiniteHeight);
  rect(PreviousX, PreviousY, PreviousWidth, PreviousHeight);
  rect(MuteX, MuteY, MuteWidth, MuteHeight);
  rect(PauseX, PauseY, PauseWidth, PauseHeight);
  rect(PlayX, PlayY, PlayWidth, PlayHeight);
  rect(StopX, StopY, StopWidth, StopHeight);
  rect(NextX, NextY, NextWidth, NextHeight);
  rect(ShuffleX, ShuffleY, ShuffleWidth, ShuffleHeight);
  rect(FastForwardX, FastForwardY, FastForwardWidth, FastForwardHeight);
  //
  //Title Text
  //
  appFont = createFont ("Times New Roman Bold", appShortSide); 
  SongTitleX = appWidth * 0.50;
  SongTitleY = appHeight * 0.25;
  SongTitleWidth = appWidth * 0.1875;
  SongTitleHeight = appHeight * 0.09375;
  //
  //Population
  //
  //Quit Button
  //
  float QX = appWidth * 0.9375;
  float QY = appHeight * 0.0;
  float QWidth = appWidth * 0.0625;
  float QHeight = appHeight * 0.12;
  pushStyle(); // Save current style settings
  float QMargin = QWidth * 0.22; // Margin so the X doesn't touch the edge
  float QX1_start = QX + QMargin;
  float QX1_end = QX + QWidth - QMargin;
  float QY1_start = QY + QMargin;
  float QY1_end = QY + QHeight - QMargin;
  stroke(#FC9CC2);
  strokeWeight(QWidth * 0.10); // Thicker for blocky look
  strokeCap(SQUARE);
  noFill();
  // First diagonal
  line(QX1_start, QY1_start, QX1_end, QY1_end);
  // Second diagonal
  line(QX1_start, QY1_end, QX1_end, QY1_start);
  popStyle(); // Restore previous style settings
  //
  // Fast Forward Button
  //
  fill(#FC9CC2);
  noStroke();
  float FFsideMargin = FastForwardWidth * 0.13;
  float FFtriWidth = (FastForwardWidth - 2 * FFsideMargin) / 2.0; // Only 2 margins, one on each sid
  // Vertically centered
  float FFcenterY = FastForwardY + FastForwardHeight / 2;
  float FFyTop = FastForwardY + FFsideMargin;
  float FFyBottom = FastForwardY + FastForwardHeight - FFsideMargin;
  // First (right) triangle (for fast forward, left triangle tip is on the right)
  float FFleftTri_x2 = FastForwardX + FastForwardWidth - FFsideMargin;
  float FFleftTri_x1 = FFleftTri_x2 - FFtriWidth;
  triangle(FFleftTri_x2, FFcenterY, FFleftTri_x1, FFyTop, FFleftTri_x1, FFyBottom);
  // Second (left) triangle, touching the first one
  float FFrightTri_x2 = FFleftTri_x1;
  float FFrightTri_x1 = FFrightTri_x2 - FFtriWidth;
  triangle(FFrightTri_x2, FFcenterY, FFrightTri_x1, FFyTop, FFrightTri_x1, FFyBottom);
  //
  // Fast Reverse Button
  //
  fill(#FC9CC2);
  noStroke();
  float sideMargin = FastReverseWidth * 0.13;
  float triWidth = (FastReverseWidth - 2 * sideMargin) / 2.0; // Only 2 margins, one on each side
  // Vertically centered
  float FRcenterY = FastReverseY + FastReverseHeight / 2;
  float yTop = FastReverseY + sideMargin;
  float yBottom = FastReverseY + FastReverseHeight - sideMargin;
  // First (left) triangle
  float leftTri_x1 = FastReverseX + sideMargin;
  float leftTri_x2 = leftTri_x1 + triWidth;
  triangle(leftTri_x1, FRcenterY, leftTri_x2, yTop, leftTri_x2, yBottom);
  // Second (right) triangle, touching the first one
  float rightTri_x1 = leftTri_x2;
  float rightTri_x2 = rightTri_x1 + triWidth;
  triangle(rightTri_x1, FRcenterY, rightTri_x2, yTop, rightTri_x2, yBottom);
  //
  /*
  QuitButtonX = appWidth - appShortSide*1/20;
  QuitButtonY = 0;
  QuitButtonWidth = appShortSide*1/20;
  QuitHeight = appShortSide*1/20;
  imageDivX = appWidth*1/4;
  imageDivY = appHeight*1/5;
  imageDivWidth = appWidth*1/2;
  imageDivHeight = appHeight*1.5/5; 
  songTitleDivX = appWidth*1/4;
  songTitleDivY = appHeight*1/20;
  songTitleDivWidth = appWidth*1/2;
  songTitleDivHeight = appHeight*1/10;
  //
  */
  //int numberOfButtons = 11; 
  //int widthOfButton = appWidth/numberOfButtons;
  //int beginningButtonSpace = widthOfButton;
  //int buttonY = appHeight*3/5;
  //
  //Stop Button
  //
  float availableWidth = StopWidth * (1 - 2 * paddingsmall);
  float availableHeight = StopHeight * (1 - 2 * paddingsmall);
  float squareSize = min(availableWidth, availableHeight);
  float squareX = StopX + (StopWidth - squareSize) / 2;
  float squareY = StopY + (StopHeight - squareSize) / 2;
  noStroke();
  fill(#FC9CC2); // Red color
  rect(squareX, squareY, squareSize, squareSize);
  //
  //Play Button
  //
  fill(#FFFFFF);
  stroke(0);
  rect(PlayX, PlayY, PlayWidth, PlayHeight);
  noStroke();
  fill(#FC9CC2);
  float padding = 0.29;
  float triangleWidth = PlayWidth * (1 - padding * 2);
  float triangleHeight = PlayHeight * (1 - padding * 1);
  float centerX = PlayX + PlayWidth / 2;
  float centerY = PlayY + PlayHeight / 2;
  float playx1 = centerX - triangleWidth / 2.5; // Left point of the triangle
  float playy1 = centerY - triangleHeight / 2;
  float playx2 = playx1; // Bottom-left point of the triangle
  float playy2 = centerY + triangleHeight / 2;
  float playx3 = centerX + triangleWidth / 2; // Right point of the triangle
  float playy3 = centerY;
  triangle(playx1, playy1, playx2, playy2, playx3, playy3); // Draw the triangle
  //
  /*
  MuteButtonX = beginningButtonSpace + widthOfButton*1;
  MuteButtonY = buttonY;
  MuteButtonWidth = widthOfButton;
  MuteButtonHeight = widthOfButton;
  PreviousButtonX = beginningButtonSpace + widthOfButton*2;
  PreviousButtonY = buttonY;
  PreviousButtonWidth = widthOfButton;
  PreviousButtonHeight = widthOfButton;
  FastReverseButtonX = beginningButtonSpace + widthOfButton*3;
  FastReverseButtonY = buttonY;
  FastReverseButtonWidth = widthOfButton;
  FastReverseButtonHeight = widthOfButton;
  //
  */
  //Pause Button
  //
  float aavailableWidth = PauseWidth * (1 - 2 * paddingsmall);
  float aavailableHeight = PauseHeight * (1 - 2 * paddingsmall);
  float barWidth = aavailableWidth / 3.0; // two bars, 1 barWidth gap in-between
  float barHeight = aavailableHeight;
  float ccenterX = PauseX + PauseWidth / 2;
  float ccenterY = PauseY + PauseHeight / 2;
  float leftBarX = ccenterX - barWidth - barWidth / 2;
  float rightBarX = ccenterX + barWidth / 2;
  float barY = ccenterY - barHeight / 2;
  noStroke();
  fill(#FC9CC2); // Blue color, change as desired
  rect(leftBarX, barY, barWidth, barHeight, barWidth / 100);
  rect(rightBarX, barY, barWidth, barHeight, barWidth / 100);
  //
  //Mute Button
  //
  /*
  pauseX1 = pauseDivX + pauseDivWidth*1/4;
  pauseY1 = pauseDivY + pauseDivHeight*1/4;
  pauseWidth1 = pauseDivWidth*1/8;
  pauseHeight1 = pauseDivHeight*1/2;
  pauseX2 = pauseDivX + pauseDivWidth*5/8;
  pauseY2 = pauseDivY + pauseDivHeight*1/4;
  pauseWidth2 = pauseDivWidth*1/8;
  pauseHeight2 = pauseDivHeight*1/2;
  //
  playDivX = beginningButtonSpace + widthOfButton*5;
  playDivY = buttonY;
  playDivWidth = widthOfButton;
  playDivHeight = widthOfButton;
  //
  //Play Button
  playX1 = playDivX + playDivWidth*1/4;
  playY1 = playDivY + playDivHeight*1/4;
  playX2 = playDivX + playDivWidth*3/4;
  playY2 = playDivY + playDivHeight*1/2;
  playX3 = playDivX + playDivWidth*1/4;
  playY3 = playDivY + playDivHeight*3/4;
  //
  loopOnceDivX = beginningButtonSpace + widthOfButton*6;
  loopOnceDivY = buttonY;
  loopOnceDivWidth = widthOfButton;
  loopOnceDivHeight = widthOfButton;
  loopInfiniteDivX = beginningButtonSpace + widthOfButton*7;
  loopInfiniteDivY = buttonY;
  loopInfiniteDivWidth = widthOfButton;
  loopInfiniteDivHeight = widthOfButton;
  fastForwardDivX = beginningButtonSpace + widthOfButton*8;
  fastForwardDivY = buttonY;
  fastForwardDivWidth = widthOfButton;
  fastForwardDivHeight = widthOfButton;
  //
  //Fast Forward Button
  fastForwardX1 = fastForwardDivX + fastForwardDivWidth*1/4;
  fastForwardY1 = fastForwardDivY + fastForwardDivHeight*1/4;
  fastForwardX2 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY2 = fastForwardDivY + fastForwardDivHeight*1/2;
  fastForwardX3 = fastForwardDivX + fastForwardDivWidth*1/4;
  fastForwardY3 = fastForwardDivY + fastForwardDivHeight*3/4;
  fastForwardX4 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY4 = fastForwardDivY + fastForwardDivHeight*1/4;
  fastForwardX5 = fastForwardDivX + fastForwardDivWidth*3/4;
  fastForwardY5 = fastForwardDivY + fastForwardDivHeight*1/2;
  fastForwardX6 = fastForwardDivX + fastForwardDivWidth*1/2;
  fastForwardY6 = fastForwardDivY + fastForwardDivHeight*3/4;
  //
  nextDivX = beginningButtonSpace + widthOfButton*9;
  nextDivY = buttonY;
  nextDivWidth = widthOfButton;
  nextDivHeight = widthOfButton;
  shuffleDivX = beginningButtonSpace + widthOfButton*10;
  shuffleDivY = buttonY;
  shuffleDivWidth = widthOfButton;
  shuffleDivHeight = widthOfButton;
  /*
  //
  float musicSongPaddingY = widthOfButton*1/4;
  float musicSongSpaceX = stopDivX;
  float musicSongSpaceY = stopDivY + widthOfButton + musicSongPaddingY;
  float musicSongSpaceWidth = appWidth - widthOfButton*2;
  float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;
  songPositionDivX = musicSongSpaceX;
  songPositionDivY = musicSongSpaceY;
  songPositionDivWidth = musicSongSpaceWidth*1/5;
  songPositionDivHeight = musicSongSpaceHeight*2/5;
  timeRemainingDivX = musicSongSpaceX + musicSongSpaceWidth*3/5;
  timeRemainingDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
  timeRemainingDivWidth = musicSongSpaceWidth*1/5;
  timeRemainingDivHeight = musicSongSpaceHeight*2/5;
  totalTimeDivX = musicSongSpaceX + musicSongSpaceWidth*4/5;
  totalTimeDivY = musicSongSpaceY + musicSongSpaceHeight*3/5;
  totalTimeDivWidth = musicSongSpaceWidth*1/5;
  totalTimeDivHeight = musicSongSpaceHeight*2/5;
  float musicSongSpaceButtonHeight = musicSongSpaceHeight*1/5;
  timeBarDivX = musicSongSpaceX;
  timeBarDivY = musicSongSpaceY + musicSongSpaceHeight*2/5;
  timeBarDivWidth = musicSongSpaceWidth;
  timeBarDivHeight = musicSongSpaceHeight*1/5;
  */
  //
  /*
  float fontSize = 52;
  float TimesNewRomanAspectRatio = fontSize / SongTitleButtonHeight;
  fontSize = SongTitleButtonHeight*TimesNewRomanAspectRatio;
  //
  color PinkBlossom = #F7B9D4;
  fill(PinkBlossom);
  textAlign (CENTER, CENTER);
  textFont(appFont, fontSize);
  //
  //Drawing Text
  while ( SongTitleButtonWidth < textWidth( playListMetaData[currentSong].title() ) ) { //decrease font
    fontSize *= 0.99;
    textFont(appFont, fontSize);
  }
  text(playListMetaData[currentSong].title(), SongTitleButtonX, SongTitleButtonY, SongTitleButtonWidth, SongTitleButtonHeight);
  color White = #FFFFFF;
  fill(White); //reset
  //
  /*
  println();
  println( "File Name: " + playListMetaData[currentSong].fileName() );
  println( "Length (in milliseconds): " + playListMetaData[currentSong].length() );
  println( "Title: " + playListMetaData[currentSong].title() );
  println( "Author: " + playListMetaData[currentSong].author() );
  println( "Album: " + playListMetaData[currentSong].album() );
  println( "Date: " + playListMetaData[currentSong].date() );
  println( "Comment: " + playListMetaData[currentSong].comment() );
  println( "Lyrics: " + playListMetaData[currentSong].lyrics() );
  println( "Track: " + playListMetaData[currentSong].track() );
  println( "Genre: " + playListMetaData[currentSong].genre() );
  println( "Copyright: " + playListMetaData[currentSong].copyright() );
  println( "Disc: " + playListMetaData[currentSong].disc() );
  println( "Composer: " + playListMetaData[currentSong].composer() );
  println( "Orchestra: " + playListMetaData[currentSong].orchestra() );
  println( "Publisher: " + playListMetaData[currentSong].publisher() );
  println( "Encoded: " + playListMetaData[currentSong].encoded() );
  //
  */
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  /*
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   //
  if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  //if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible   
 
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[ currentSong ].isPlaying() ) {
      playList[ currentSong ].pause();
    } else {
      playList[ currentSong ].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='P' || key=='p' ) ; // Previous //Students to finish
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
} //End keyPressed
//
// End Main Program
