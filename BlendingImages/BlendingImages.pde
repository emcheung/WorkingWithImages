//Declare variables
PImage circle;
PImage triangle;

void setup() {
  size(800, 600);
  background(255);
  
  //Load images
  triangle = loadImage("triangle.jpg");
  circle = loadImage("circle.jpg");
  
  //Blend to triangle picture
  triangle.blend(circle, 0, 0, triangle.width, triangle.height, 0, 0, circle.width, circle.height, OVERLAY);
}

void draw() {
  //Draw blended picture
  image(triangle, 0, 0);
}