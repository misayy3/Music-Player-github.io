// Dynamic not static
//
//Library - Minim
//
//Global Variables
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


void setup() {
  fullScreen(); //displayWidth, displayHeight

  int appWidth = displayWidth;
  int appHeight = displayHeight;
  
  QuitX = appWidth * 0.9375;
  QuitY = appHeight * 0.0;
  QuitWidth = appWidth * 0.12;
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
  TimeBarY = appHeight * 0.4375;
  TimeBarWidth = appWidth * 0.4375;
  TimeBarHeight = appHeight * 0.0325;
  PositionOfTheSongX = appWidth * 0.50;
  PositionOfTheSongY = appHeight * 0.50;
  PositionOfTheSongWidth = appWidth * 0.0625;
  PositionOfTheSongHeight = appHeight * 0.03125;
  TimeRemainingX = appWidth * 0.875;
  TimeRemainingY = appHeight * 0.50;
  TimeRemainingWidth = appWidth * 0.03125;
  TimeRemainingHeight = appHeight * 0.03125;
  TotalTimeOfSongX = appWidth * 0.90625;
  TotalTimeOfSongY = appHeight * 0.50;
  TotalTimeOfSongWidth = appWidth * 0.03125;
  TotalTimeOfSongHeight = appHeight * 0.03125;
  FastReverseX = appWidth * 0.50;
  FastReverseY = appHeight * 0.5625;
  FastReverseWidth = appWidth * 0.03125;
  FastReverseHeight = appHeight * 0.046875;
  LoopOnceX = appWidth * 0.53125;
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
  MuteX = appWidth * 0.625;
  MuteY = appHeight * 0.5625;
  MuteWidth = appWidth * 0.03125;
  MuteHeight = appHeight * 0.046875;
  PauseX = appWidth * 0.65625;
  PauseY = appHeight * 0.5625;
  PauseWidth = appWidth * 0.03125;
  PauseHeight = appHeight * 0.046875;
  PlayX = appWidth * 0.71875;
  PlayY = appHeight * 0.5625;
  PlayWidth = appWidth * 0.03125;
  PlayHeight = appHeight * 0.046875;
  StopX = appWidth * 0.78125;
  StopY = appHeight * 0.5625;
  StopWidth = appWidth * 0.03125;
  StopHeight = appHeight * 0.046875;
  NextX = appWidth * 0.84375;
  NextY = appHeight * 0.5625;
  NextWidth = appWidth * 0.03125;
  NextHeight = appHeight * 0.046875;
  ShuffleX = appWidth * 0.90625;
  ShuffleY = appHeight * 0.5625;
  ShuffleWidth = appWidth * 0.03125;
  ShuffleHeight = appHeight * 0.046875;
  FastForwardX = appWidth * 0.96875;
  FastForwardY = appHeight * 0.5625;
  FastForwardWidth = appWidth * 0.03125;
  FastForwardHeight = appHeight * 0.046875;

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
 
}
//
void draw() {}
//
void mousePressed() {}
//
void keyPressed() {}
//
//End MAIN Program
