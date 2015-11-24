PImage jshih;
PImage mask;
PImage money;
PVector loc, vel;

void setup() {
  size(800, 600);
  jshih = loadImage("jshih.jpg");
  mask = loadImage("mask.png");
  money = loadImage("money.png");
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  vel.mult(10);
  
  jshih.mask(mask);
  
  imageMode(CENTER);
}

void draw() {
  background(255);
  image(jshih, width/2, height/2, height, height);
  image(money, loc.x, loc.y, height/2, height/2);
  loc.add(vel);
  if(loc.x > width || loc.x < 0) {
    vel.x *= -1;
  }
  if(loc.y > width || loc.y < 0) {
    vel.y *= -1;
  }
}