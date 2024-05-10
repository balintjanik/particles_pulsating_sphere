// escape particle
int num = 4000;
Particle[] p = new Particle[num];
Particle mainP;

float particleForce = 0.005;

void setup(){
  size(500,500);
  fullScreen();
  for (int i = 0; i < num; i++){
    p[i] = new Particle(new PVector(random(width), random(height)), 100, 200);
  }
  mainP = new Particle(new PVector(width/2, height/2), 1920, 200);
  stroke(255);
}

void draw(){
  background(0);
  
  for(int i = 0; i < num; i++){
    p[i].update(p, i);
  }
  
  // saveFrame("frame-######.png");
}
