PImage yoyo, logo, sky;

void setup() {
  size(558, 558);
  yoyo = loadImage("yoyo.jpg");
  logo = loadImage("black.jpg");
  sky = loadImage("sky.jpg");
  yoyo.mask(logo);
}

void draw() {
  image(sky, 0, 0);
  background(255);
  image(yoyo, 0, 0);
  if (mousePressed) {
    filter(BLUR);
  }
  blend(sky, 0, 0, sky.width, sky.height, 0, 0, sky.width, sky.height, BURN);
}