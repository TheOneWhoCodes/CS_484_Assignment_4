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

void setup() {
  size(1000, 1000);
  noStroke();
  noLoop();
  
  img = loadImage("../img/pixel.png");
}

void draw() {
  background(38);
  image(img, 0, 0, 1000, 1000);
}