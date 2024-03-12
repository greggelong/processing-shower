import processing.video.*;
// using pixel array
// is it faster than get()? I am not sure
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
  video.loadPixels();
   for (int i = 0;i<200;i++){
     // git a random float from the smaller video feed
     
     float x =(random(video.width));
     float y =(random(video.height));
     // when getting the color floor it so it is an int in the grid
     color c = video.pixels[floor(x) + floor(y)*video.width];
     fill(c);
     noStroke();
     // when placing the the ellipse it is x and y are still floats so it doesnt appear as a grid
     // use width - so the thing works as a mirror
     ellipse(width-x*videoScale,y*videoScale,20,20);
     
     
     
  }
}
