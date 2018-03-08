// Font/image variables
// Christian Garcia
// CS 484
// Assignment 4
// March 9, 2018

String ampm;

PImage img;
PImage imgSearch;
PImage imgControl;
PImage imgFB;
PImage imgSnapchat;
PImage imgLinkedIn;
PImage imgTwitter;
PImage imgSpotify;

void setup() {
  size(1000, 1000);
  noStroke();
  noLoop();
  
  img = loadImage("../img/pixel.png");
  imgSearch = loadImage("../img/search.PNG");
  imgControl = loadImage("../img/control.png");
  imgFB = loadImage("../img/facebook.png");
  imgSnapchat = loadImage("../img/snapchat.png");
  imgLinkedIn = loadImage("../img/linkedin.png");
  imgTwitter = loadImage("../img/twitter.png");
  imgSpotify = loadImage("../img/spotify.png");
}

void draw() {
  background(38);
  image(img, 0, 0, 1000, 1000);
  fill(#F44336);
  rect(312, 156, 373, 658);
  fill(38);
  rect(312, 156, 373, 25);
  
  // Place current time at top
  fill(255);
  textSize(18);
  if(hour() > 11) {
    ampm = " PM";
  }
  
  if(hour( ) - 12 > 0) {
    if(minute() < 10) {
      text((hour() - 12) + ":0" + minute() + ampm, 460,175);
    } else {
      text((hour() - 12) + ":" + minute() + ampm, 460, 175);
    }
  } else {
    if(minute() < 10) {
      text((hour()) + ":0" + minute() + ampm, 460, 175);
    } else {
      text((hour()) + ":" + minute() + ampm, 460, 175);
    }
  }
  
  image(imgFB, 340, 500, 65, 50);
  image(imgSnapchat, 435, 502, 47, 47);
  image(imgLinkedIn, 517, 501, 50, 50);
  image(imgTwitter, 598, 500, 50, 50);
  image(imgSpotify, 340, 600, 65, 50);
  image(imgFB, 426, 600, 65, 50);
  image(imgFB, 510, 600, 65, 50);
  image(imgFB, 590, 600, 65, 50);
  image(imgSearch, 318, 718, 360, 50);
  image(imgControl, 312, 700, 373, 115);
}