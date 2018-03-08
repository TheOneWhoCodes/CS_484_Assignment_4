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
PImage imgYouTube;
PImage imgInsta;
PImage imgPhotos;
PImage imgSMS;
PImage imgPhone;
PImage imgGMail;
PImage imgChrome;
PImage imgLArrow;
PImage imgRArrow;
PImage imgBat;
PImage imgBars;

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
  imgYouTube = loadImage("../img/youtube.png");
  imgInsta = loadImage("../img/insta.png");
  imgPhotos = loadImage("../img/photos.png");
  imgSMS = loadImage("../img/sms.png");
  imgPhone = loadImage("../img/phone.png");
  imgGMail = loadImage("../img/gmail.png");
  imgChrome = loadImage("../img/chrome.png");
  imgLArrow = loadImage("../img/larrow.png");
  imgRArrow = loadImage("../img/rarrow.png");
  imgBat = loadImage("../img/bat.png");
  imgBars = loadImage("../img/bars.png");
}

void draw() {
  background(38);
  image(img, 0, 0, 1000, 1000);
  fill(#B71C1C);
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
  
  textSize(24);
  text("Wednesday, April 21", 380, 300);
  textSize(18);
  text("49 °F",398,330); 
   text("|   Next: CS 484", 464,330); 
   
  image(imgBat, 660, 160, 15, 15);
  image(imgBars, 660, 160, 15, 15);
  image(imgLArrow, 315, 350, 50, 40);
  image(imgRArrow, 635, 349, 50, 42);
  image(imgSMS, 321, 400, 65, 50);
  image(imgChrome, 420, 403, 50, 50);
  image(imgGMail, 530, 407, 50, 43);
  image(imgPhone, 630, 400, 50, 50);
  image(imgFB, 340, 500, 65, 50);
  image(imgSnapchat, 435, 502, 47, 47);
  image(imgLinkedIn, 517, 501, 50, 50);
  image(imgTwitter, 598, 500, 50, 50);
  image(imgSpotify, 348, 600, 50, 50);
  image(imgYouTube, 432, 600, 50, 50);
  image(imgInsta, 517, 600, 50, 50);
  image(imgPhotos, 600, 600, 50, 50);
  image(imgSearch, 318, 718, 360, 50);
  image(imgControl, 312, 700, 373, 115);
}