// Font/image variables
// Christian Garcia
// CS 484
// Assignment 4
// March 9, 2018

// Global variables
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
PImage imgSun;
PImage imgFBLogin;

boolean showHome;
boolean showFB;

// Initialize all variables
void setup() {
  size(1000, 1000);
  noStroke();
  noLoop();
  
  showHome = true;
  showFB = false;
  
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
  imgSun = loadImage("../img/sun.png");
  imgFBLogin = loadImage("../img/fblogin.png");
}

void draw() {
  background(38);
  
  // Draw Pixel mockup
  image(img, 0, 0, 1000, 1000);
  
  // Draw homescreen
  if(showHome == true) {
    fill(#B71C1C);
    rect(312, 156, 373, 658);

    fill(255);
    textSize(24);
    text("Wednesday, April 21", 380, 300);
    textSize(18);
    text("49 °F",398,330); 
    text("|   Next: CS 484", 464,330); 
     
    image(imgSun, 448, 225, 100, 100);
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
  }
  
  // Draw Facebook login screen
  else if(showFB == true) {
    image(imgFBLogin, 312, 156, 373, 658);
  }
  
  // Information bar at top
  fill(38);
  rect(312, 156, 373, 25);
  
  // Place current time in info bar
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
  
  // Battery and signal icons
  image(imgBat, 660, 160, 15, 15);
  image(imgBars, 640, 160, 15, 15);
  
  // Android control buttons (bottom)
  image(imgControl, 312, 700, 373, 115);
}

// Control Facebook login view
void mouseClicked() {
  if (mouseX >= 340 && mouseX <= 405 && mouseY >= 500 && mouseY <= 550 && showFB == false) {
    showHome = false;
    showFB = true;
  }
  
  else if (mouseX >= 350 && mouseX <= 400 && mouseY >= 700 && mouseY <= 815 && showFB == true) {
    showHome = true;
    showFB = false;
  }
  
  redraw();
}