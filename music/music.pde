import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//libraries


//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1, song2, song3; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  textSetup();
  //background(blue);
  fullScreen();
  population();
  // 
  minim = new Minim(this);
  song1 = minim.loadFile("Black Mass - Brian Bolger.mp3");
  song1.play();
  song2 = minim.loadFile("Dead Forest - Brian Bolger.mp3");
  song2.play();
  song3 = minim.loadFile("Snowy Peaks pt I - Chris Haugen.mp3");
  song3.play();
}//End setup()

void draw() {
  powerDraw();
}//End draw()

void keyPressed() {
}//End keyPressed()

void mousePressed() {
  powerMousePressed();
 // if ()
  }//End mousePressed()
