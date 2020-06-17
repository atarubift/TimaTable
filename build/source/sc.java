import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sc extends PApplet {

PImage img;

public void setup(){
  
  img = loadImage("first_UI.png");
}

public void draw(){
  background(0);
  clock();
}
// float clock_x = 30;
// float clock_y = 30;
float clock_dia = 170;

public void clock(){
  float s = second();
  float m = minute();
  float h = hour() % 12;

  // translate(clock_dia/2, clock_dia/2);
  ellipse(115, 115, clock_dia, clock_dia);

  noFill();
  stroke(255);

  //秒針
  pushMatrix();
  translate(115,115);
  rotate(radians(s*(360/60)));
  strokeWeight(1);
  line(0, 0, 0,  -clock_dia/2 + 10);
  popMatrix();

  //分針
  pushMatrix();
    translate(115,115);
  rotate(radians(m*(360/60)));
  strokeWeight(2);
  line(0, 0, 0, 30 - clock_dia/2);
  popMatrix();
}
  public void settings() {  size(480, 640); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sc_1019128" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
