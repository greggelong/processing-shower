// A simple Particle class

class Water {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Water(PVector loc) {
    acceleration = new PVector(0, 0.05);
    velocity = PVector.random2D();//(0,-1);//(random(-1, 1), random(-2, 0));
    position = loc.copy();
    lifespan = 200.0;
  }


  void run() {
    update();
    display();
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
    fill(255);
    ellipse(position.x, position.y, 28, 28);
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
