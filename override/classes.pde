class Spin {
  float x, y, speed;
  float angle = 0.0;
  
  Spin(float xpos, float ypos, float s) {
    x = xpos;
    y = ypos;
    speed = s;
  }
  
  void update() {
    angle += speed;
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    angle += speed;
    rotate(angle);
    
    this.displaySpec(); // Denne kalder sub-class'ens ejen displaySpec() og ikke Spin's
    
    popMatrix();
  }
  
  void displaySpec() {
    
  }
}

class SpinArm extends Spin {
  SpinArm(float x, float y, float s) {
    super(x, y, s);
  }
  
  /*
  void display() {
    strokeWeight(1);
    stroke(0);
    pushMatrix();
    translate(x, y);
    angle += speed;
    rotate(angle);
    line(0, 0, 165, 0);
    popMatrix();
  }
  */
  
  void displaySpec() {
    strokeWeight(1);
    stroke(0);

    line(0, 0, 165, 0);
  }
}

class SpinSpots extends Spin {
  float dim;
  
  SpinSpots(float x, float y, float s, float d) {
    super(x, y, s);
    dim = d;
  }
  
  /*
  void display() {
    noStroke();
    pushMatrix();
    translate(x, y);
    angle += speed;
    rotate(angle);
    ellipse(-dim/2, 0, dim, dim);
    ellipse(dim/2, 0, dim, dim);
    popMatrix();
  }
  */
  
  void displaySpec() {
    noStroke();
    
    ellipse(-dim/2, 0, dim, dim);
    ellipse(dim/2, 0, dim, dim);
  } 
}
