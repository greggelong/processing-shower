ArrayList<Water> drops; 

void setup() {
  //size(640, 360);
  fullScreen();
  background(0);
  noStroke();

  // Create an empty ArrayList (will store Ball objects)
  drops = new ArrayList<Water>();
  addParticle();
 
}

void addParticle(){
   // Start by adding one element
  drops.add(new Water(new PVector(width/2, 50)));
   drops.add(new Water(new PVector(width/2+20, 50)));
  
}

void draw(){
  background(0);
  addParticle();
  for (int i = drops.size()-1; i >= 0; i--) {
      Water p = drops.get(i);
      p.run();
      if (p.isDead()) {
        drops.remove(i);
      }
    }
}
