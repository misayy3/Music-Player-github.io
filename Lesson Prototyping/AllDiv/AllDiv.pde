// Dynamic not static
//
//Library - Minim
//
//Global Variables
//
float QuitDivX, QuitDivY, QuitDivWidth, QuitDivHeight;
float SongImageDivX, SongImageDivY, SongImageDivWidth, SongImageDivHeight;
float SongTitleDivX, SongTitleDivY, SongTitleDivWidth, SongTitleDivHeight;
float SongArtistDivX, SongArtistDivY, SongArtistDivWidth, SongArtistDivHeight;
float TimeBarDivX, TimeBarDivY, TimeBarDivWidth, TimeBarDivHeight;
float PositionOfTheSongDivX, PositionOfTheSongDivY, PositionOfTheSongDivWidth, PositionOfTheSongDivHeight;
float TimeRemainingDivX, TimeRemainingDivY, TimeRemainingDivWidth, TimeRemainingDivHeight;
float TotalTimeOfSongDivX, TotalTimeOfSongDivY, TotalTimeOfSongDivWidth, TotalTimeOfSongDivHeight;
float FastReverseDivX, FastReverseDivY, FastReverseDivWidth, FastReverseDivHeight;
float LoopOnceDivX, LoopOnceDivY, LoopOnceDivWidth, LoopOnceDivHeight;
float LoopInfiniteDivX, LoopInfiniteDivY, LoopInfiniteDivWidth, LoopInfiniteDivHeight;
float PreviousDivX, PreviousDivY, PreviousDivWidth, PreviousDivHeight;
float MuteDivX, MuteDivY, MuteDivWidth, MuteDivHeight;
float PauseDivX, PauseDivY, PauseDivWidth, PauseDivHeight;
float PlayDivX, PlayDivY, PlayDivWidth, PlayDivHeight;
float StopDivX, StopDivY, StopDivWidth, StopDivHeight;
float NextDivX, NextDivY, NextDivWidth, NextDivHeight;
float ShuffleDivX, ShuffleDivY, ShuffleDivWidth, ShuffleDivHeight;
float FastForwardDivX, FastForwardDivY, FastForwardDivWidth, FastForwardDivHeight;
//
void setup() {
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  int shortSide = ( appWidth < appHeight ) ? appWidth : appHeight ;
  
  //
  //Population
  QuitDivX = appWidth - shortSide * 1/20;
  QuitDivY = 0;
  QuitDivWidth = shortSide * 1/20;
  QuitDivHeight = shortSide * 1/20;
  //imageDivX = appWidth * 1/4;
  //imageDivY = appHeight*1/5;
  //imageDivWidth = appWidth*1/2;
  //imageDivHeight = appHeight*1.5/5; //1+1.5=2.5, half of the total height
  //songTitleDivX = appWidth*1/4;
  //songTitleDivY = appHeight*1/20;
  //songTitleDivWidth = appWidth*1/2;
  //songTitleDivHeight = appHeight*1/10;
  //
  //STOP BUTTON
  StopDivX = StopDivX + StopDivWidth * 1/4;
  StopDivY = StopDivY + StopDivHeight * 1/4;
  StopDivWidth = widthOfButton * 1/2;
  StopDivHeight = widthOfButton * 1/2;
  //
  int numberOfButtons = 19; 
  println("Button Width:", appWidth/numberOfButtons);
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  int buttonY = appHeight*3/5;
  QuitDivX = beginningButtonSpace + widthOfButton*1;
  QuitDivY = buttonY;
  QuitDivWidth = widthOfButton;
  QuitDivHeight = widthOfButton;
  SongImageDivX = beginningButtonSpace + widthOfButton*2;
  SongImageDivY = buttonY;
  SongImageDivWidth = widthOfButton;
  SongImageDivHeight = widthOfButton;
  SongTitleDivX = beginningButtonSpace + widthOfButton*3;
  SongTitleDivY = buttonY;
  SongTitleDivWidth = widthOfButton;
  SongTitleDivHeight = widthOfButton;
  SongArtistDivX = beginningButtonSpace + widthOfButton*4;
  SongArtistDivY = buttonY;
  SongArtistDivWidth = widthOfButton;
  SongArtistDivHeight = widthOfButton;
  TimeBarDivX = beginningButtonSpace + widthOfButton*5;
  TimeBarDivY = buttonY;
  TimeBarDivWidth = widthOfButton;
  TimeBarDivHeight = widthOfButton;
  PositionOfTheSongDivX = beginningButtonSpace + widthOfButton*6;
  PositionOfTheSongDivY = buttonY;
  PositionOfTheSongDivWidth = widthOfButton;
  PositionOfTheSongDivHeight = widthOfButton;
  TimeRemainingDivX = beginningButtonSpace + widthOfButton*7;
  TimeRemainingDivY = buttonY;
  TimeRemainingDivWidth = widthOfButton;
  TimeRemainingDivHeight = widthOfButton;
  TotalTimeOfSongDivX = beginningButtonSpace + widthOfButton*8;
  TotalTimeOfSongDivY = buttonY;
  TotalTimeOfSongDivWidth = widthOfButton;
  TotalTimeOfSongDivHeight = widthOfButton;
  FastReverseDivX = beginningButtonSpace + widthOfButton*9;
  FastReverseDivY = buttonY;
  FastReverseDivWidth = widthOfButton;
  FastReverseDivHeight = widthOfButton;
  LoopOnceDivX = beginningButtonSpace + widthOfButton*10;
  LoopOnceDivY = buttonY;
  LoopOnceDivWidth = widthOfButton;
  LoopOnceDivHeight = widthOfButton;
  LoopInfiniteDivX = beginningButtonSpace + widthOfButton*11;
  LoopInfiniteDivY = buttonY;
  LoopInfiniteDivWidth = widthOfButton;
  LoopInfiniteDivHeight = widthOfButton;
  PreviousDivX = beginningButtonSpace + widthOfButton*12;
  PreviousDivY = buttonY;
  PreviousDivWidth = widthOfButton;
  PreviousDivHeight = widthOfButton;
  MuteDivX = beginningButtonSpace + widthOfButton*13;
  MuteDivY = buttonY;
  MuteDivWidth = widthOfButton;
  MuteDivHeight = widthOfButton;
  PauseDivX = beginningButtonSpace + widthOfButton*14;
  PauseDivY = buttonY;
  PauseDivWidth = widthOfButton;
  PauseDivHeight = widthOfButton;
  PlayDivX = beginningButtonSpace + widthOfButton*15;
  PlayDivY = buttonY;
  PlayDivWidth = widthOfButton;
  PlayDivHeight = widthOfButton; 
  StopDivX = beginningButtonSpace + widthOfButton*16;
  StopDivY = buttonY;
  StopDivWidth = widthOfButton;
  StopDivHeight = widthOfButton;
  NextDivX = beginningButtonSpace + widthOfButton*17;
  NextDivY = buttonY;
  NextDivWidth = widthOfButton;
  NextDivHeight = widthOfButton;
  ShuffleDivX = beginningButtonSpace + widthOfButton*18;
  ShuffleDivY = buttonY;
  ShuffleDivWidth = widthOfButton;
  ShuffleDivHeight = widthOfButton;
  FastForwardDivX = beginningButtonSpace + widthOfButton*19;
  FastForwardDivY = buttonY;
  FastForwardDivWidth = widthOfButton;
  FastForwardDivHeight = widthOfButton;
  //
  float musicSongPaddingY = widthOfButton*1/4;
  float musicSongSpaceX = StopDivX;
  float musicSongSpaceY = StopDivY + widthOfButton + musicSongPaddingY;
  float musicSongSpaceWidth = appWidth - widthOfButton*2;
  float musicSongSpaceHeight = appHeight - musicSongPaddingY - musicSongSpaceY;  
  float musicSongSpaceButtonHeight = musicSongSpaceHeight*1/5;

  rect(QuitDivX, QuitDivY, QuitDivWidth, QuitDivHeight);
  rect(SongImageDivX, SongImageDivY, SongImageDivWidth, SongImageDivHeight);
  rect(SongTitleDivX, SongTitleDivY, SongTitleDivWidth, SongTitleDivHeight);
  rect(SongArtistDivX, SongArtistDivY, SongArtistDivWidth, SongArtistDivHeight);
  rect(TimeBarDivX, TimeBarDivY, TimeBarDivWidth, TimeBarDivHeight);
  rect(PositionOfTheSongDivX, PositionOfTheSongDivY, PositionOfTheSongDivWidth, PositionOfTheSongDivHeight);
  rect(TimeRemainingDivX, TimeRemainingDivY, TimeRemainingDivWidth, TimeRemainingDivHeight);
  rect(TotalTimeOfSongDivX, TotalTimeOfSongDivY, TotalTimeOfSongDivWidth, TotalTimeOfSongDivHeight);
  rect(FastReverseDivX, FastReverseDivY, FastReverseDivWidth, FastReverseDivHeight);
  rect(LoopOnceDivX, LoopOnceDivY, LoopOnceDivWidth, LoopOnceDivHeight);
  rect(LoopInfiniteDivX, LoopInfiniteDivY, LoopInfiniteDivWidth, LoopInfiniteDivHeight);
  rect(PreviousDivX, PreviousDivY, PreviousDivWidth, PreviousDivHeight);
  rect(MuteDivX, MuteDivY, MuteDivWidth, MuteDivHeight);
  rect(PauseDivX, PauseDivY, PauseDivWidth, PauseDivHeight);
  rect(PlayDivX, PlayDivY, PlayDivWidth, PlayDivHeight);
  rect(StopDivX, StopDivY, StopDivWidth, StopDivHeight);
  rect(NextDivX, NextDivY, NextDivWidth, NextDivHeight);
  rect(ShuffleDivX, ShuffleDivY, ShuffleDivWidth, ShuffleDivHeight);
  rect(FastForwardDivX, FastForwardDivY, FastForwardDivWidth, FastForwardDivHeight);
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
