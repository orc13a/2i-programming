// SpinSpots spots;
// SpinArm arm;

Spin[] list = new Spin[2];

void setup() {
  size(640, 360);
  
  // arm = new SpinArm(width/2, height/2, 0.01);
  // spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
  
  list[0] = new SpinArm(width/2, height/2, 0.01);
  list[1] = new SpinSpots(width/2, height/2, -0.02, 90.0);
}

void draw() {
  background(204);
  
  // arm.update();
  // arm.display();
  
  // spots.update();
  // spots.display();
  
  // obj = hvert objekt vi har i væres array
  for (Spin obj : list) {
    obj.update();
    obj.display();
  }
}
