// Christian Garcia
// CS 484
// Assignment 2
// Fedruary 9, 2018

// Font/image variables
// Christian Garcia
// CS 484
// Assignment 4
// March 9, 2018

PImage img;
PImage imgSearch;
PImage imgControl;

void setup() {
  size(1000, 1000);
  noStroke();
  noLoop();
  
  img = loadImage("../img/pixel.png");
  imgSearch = loadImage("../img/search.PNG");
  imgControl = loadImage("../img/control.png");
}

void draw() {
  background(38);
  image(img, 0, 0, 1000, 1000);
  
  fill(25, 75, 255);
  rect(312, 156, 373, 658);
  image(imgSearch, 312, 718, 373, 50);
  image(imgControl, 312, 700, 373, 115);
}