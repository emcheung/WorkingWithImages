PImage dog;
PVector loc, vel;

void setup() {
  size(800, 600);
  dog = loadImage("puppies.jpg");
  loc = PVector.random2D();
  vel = PVector.random2D();
  imageMode(CENTER);
}

void draw() {
  image(dog, width/2, height/2);
  filter(BLUR, 2);
}