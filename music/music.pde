//Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//libraries


//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  textSetup();
  background(blue);
  fullScreen();//size(500, 500);
  population();
  // 
  minim = new Minim(this);
  song1 = minim.loadFile("Music/Black Mass - Brian Bolger.mp3");
  song1.play(5000);
}//End setup()

void draw() {
  powerDraw();
}//End draw()

void keyPressed() {
  if (key == 'w' || key == 'W') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length()-0001) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  //Play-Stop
  //  if (keyCode == 's') {
  // if ( song1.isPlaying() ) {
  //   song1.pause();
  //   song1.rewind();
  //} 
  //FastForward
  if (key == 'a' || key == 'A') song1.skip(1000); 
  //FastRewind
  if (key == 'd' || key == 'D') song1.skip(-1000);
  //Mute
  
}
//End keyPressed()   
void mousePressed() {
  powerMousePressed();
  // if ()
}//End mousePressed()
