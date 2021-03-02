SpinSpots spots;
SpinArm arm;
InnerRect innerRects;

void setup() {
  size(640, 360);
  rectMode(CENTER);
  
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
  innerRects = new InnerRect(width/2, height/2, -0.02, 90.0);
}

void draw() {
  background(204);
  arm.update();
  arm.display();
  
  fill(255);
  spots.update();
  spots.display();
  
  innerRects.display();
}
