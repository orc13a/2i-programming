SpinSpots spots;
SpinArm arm;

void setup() {
  size(640, 360);
  
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
}

void draw() {
  background(204);
  
  arm.update();
  arm.display();
  
  spots.update();
  spots.display();
}
