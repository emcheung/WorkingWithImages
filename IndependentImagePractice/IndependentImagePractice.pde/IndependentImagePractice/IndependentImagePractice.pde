//Initialize variables
PImage yoyo, logo, sky;

void setup() {
  size(558, 558);
  
  //Load images
  yoyo = loadImage("yoyo.jpg");
  logo = loadImage("black.jpg");
  sky = loadImage("sky.jpg");
  
  //Mask image "yoyo" with image "logo"
  yoyo.mask(logo);
}

void draw() {
  //Draw image "sky" to enable blend and mask
  image(sky, 0, 0);
  
  //White logo when key is typed
  if (keyPressed) {
    background(255);
  }
  
  //Draw masked image "yoyo"
  image(yoyo, 0, 0);
  
  //Blur when clicked
  if (mousePressed) {
    filter(BLUR);
  }
  
  //Blend images "yoyo" and "sky"
  blend(sky, 0, 0, sky.width, sky.height, 0, 0, sky.width, sky.height, BURN);
}