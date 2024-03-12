// A simple Particle class

class Water {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Water(PVector loc) {
    acceleration = new PVector(0, 0.06);
    velocity = PVector.random2D();//(0,-1);//(random(-1, 1), random(-2, 0));
    position = loc.copy();
    lifespan = 190.0;
  }


  

  // Method to update position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0;
  }

  // Method to display
  void display() {
    //stroke(255, lifespan);
    // get the waters position on the video feed
    float x = position.x/rows;//videoScale;
    float y = position.y/videoScale;
    color c = video.get(floor(x),floor(y));
    fill(c);
    ellipse(width-position.x, position.y, 38, 38);
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
