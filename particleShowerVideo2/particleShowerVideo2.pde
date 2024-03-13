import processing.video.*;

ArrayList<Water> drops; 

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 20;
// Number of columns and rows in the system
int cols, rows;
// Variable to hold onto Capture object
Capture video;


void setup() {
  //size(460, 1000);
  fullScreen();
  background(0);
  noStroke();
  // Initialize columns and rows
  // here I made the video width half the height maybe runs faster but you can chage it back
  // chage in the object when getting the color too
  rows = height/videoScale;
  cols = rows/2;//width/videoScale;
  background(0);
  video = new Capture(this, cols, rows);
  video.start();
  println(width);

  // Create an empty ArrayList (will store Ball objects)
  drops = new ArrayList<Water>();
  addParticle();
 
}

// Read image from the camera
void captureEvent(Capture video) {
  video.read();
}

void addParticle(){
   // adding 4 elements giving a showerhead effect and filling in the middle
  drops.add(new Water(new PVector(width/2, 50)));
  for (int i =0; i<2;i++){
  
   drops.add(new Water(new PVector(random(width/2-60,width/2+60), 50)));
   drops.add(new Water(new PVector(random(width/2-60,width/2+60), 50)));
   drops.add(new Water(new PVector(width/2, 50+60)));
   //drops.add(new Water(new PVector(width/2, 50+30)));
  }
}

void draw(){
  background(0);
  println(frameRate);
  addParticle();
  PVector gravity = new PVector(0,0.3);
  for (int i = drops.size()-1; i >= 0; i--) {
      // odd way the array list works
      Water p = drops.get(i);
      p.applyForce(gravity);
      p.update();
      p.display();
      if (p.isDead()) {
        drops.remove(i);
      }
    }
}
