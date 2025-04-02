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
  SongArtistY = appHeight * 0.25;
  SongArtistWidth = appWidth * 0.125;
  SongArtistHeight = appHeight * 0.0625;

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
