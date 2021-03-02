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
}

class SpinArm extends Spin {
  SpinArm(float x, float y, float s) {
    super(x, y, s);
  }
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
}

class SpinSpots extends Spin {
  float dim;
  SpinSpots(float x, float y, float s, float d) {
    super(x, y, s);
    dim = d;
  }
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
}

class InnerRect extends SpinSpots {
  InnerRect(float x, float y, float s, float d) {
    super(x, y, s, d);
  }
  
  void display() {
    fill(0);
    pushMatrix();
    translate(x, y);
    angle += (speed * 2); // x2 too keep up with the ellipses
    rotate(angle);
    rect(-dim/2, 0, dim / 3, dim / 3);
    rect(dim/2, 0, dim / 3, dim / 3);
    popMatrix();
  }
}

class outerEllipses extends SpinSpots {
  float angle2 = angle;
  
  outerEllipses(float x, float y, float s, float d) {
    super(x, y, s, d);
  }
  
  void display() {
    fill(25);
    pushMatrix();
    translate(x, y);
    angle += (speed * 2);
    angle2 -= (speed * 2);
    rotate(angle);
    ellipse(((+dim/2) + dim/2) + dim/6, 0, dim / 3, dim / 3);
    ellipse(((-dim/2) - dim/2) - dim/6, 0, dim / 3, dim / 3);
    popMatrix();
  }
}
