//Declare variables
PImage jshih, mask, money;
PVector loc, vel;

void setup() {
  size(800, 600);
  
  //Load images
  jshih = loadImage("jshih.jpg");
  mask = loadImage("mask.png");
  money = loadImage("money.png");
  
  //Initialize vectors for money.png
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  vel.mult(10);
  
  //Mask jshih.jpg
  jshih.mask(mask);
  
  imageMode(CENTER);
}

void draw() {
  background(255);
  
  //Draw masked image
  image(jshih, width/2, height/2, height, height);
  
  //Draw money
  image(money, loc.x, loc.y, height/2, height/2);
  loc.add(vel);
  if(loc.x > width || loc.x < 0) {
    vel.x *= -1;
  }
  if(loc.y > width || loc.y < 0) {
    vel.y *= -1;
  }
}