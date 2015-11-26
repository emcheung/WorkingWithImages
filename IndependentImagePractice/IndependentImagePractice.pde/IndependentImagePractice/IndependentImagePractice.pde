PImage yoyo, logo;

void setup() {
  size(558, 558);
  yoyo = loadImage("yoyo.jpg");
  logo = loadImage("black.jpg");
  yoyo.mask(logo);
}

void draw() {
  background(255);
  image(yoyo, 0, 0);
}