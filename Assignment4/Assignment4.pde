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

void setup() {
  size(1000, 1000);
  noStroke();
  noLoop();
  
  img = loadImage("../img/pixel.png");
  imgSearch = loadImage("../img/search.PNG");
}

void draw() {
  background(255);
  image(img, 0, 0, 1000, 1000);
  
  fill(38);
  rect(312, 156, 373, 658);
  image(imgSearch, 350, 700, 300, 40);
}