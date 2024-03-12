import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 20;
// Number of columns and rows in the system
int cols, rows;
// Variable to hold onto Capture object
Capture video;

void setup() {
  //size(640, 480);
  fullScreen();
  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
  background(0);
  video = new Capture(this, cols, rows);
  video.start();
  println(width);
}

// Read image from the camera
void captureEvent(Capture video) {
  video.read();
}

void draw() {
   for (int i = 0;i<200;i++){
     // get a random float from video width and height
     float x =random(video.width);
     float y =random(video.height);
     // we need to floo it for the get function in processing
     color c = video.get(floor(x),floor(y));
     fill(c);
     noStroke();
     // scale that to the screen size 
     // use width- to reverse the video so it is like a mirror
     ellipse(width-x*videoScale,y*videoScale,20,20);
     
     
     
  }
}
