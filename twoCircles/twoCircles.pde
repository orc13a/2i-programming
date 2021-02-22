void setup() {
  size(255, 255);
}

// Funktionen
void circles(float[] array) {
  //println(array);
  
  fill(array[0], array[1], array[2]);
  circle(array[0], array[1], array[2]);
  
  fill(array[3], array[4], array[5]);
  circle(array[3], array[4], array[5]);
}

void draw() {
  
}

void keyPressed() {
  float[] coorArr = { random(0, 255), random(0, 255), random(0,255/2), random(0, 255), random(0, 255), random(0,255/2) };
  clear();
  background(255);
  
  noStroke();
  circles(coorArr);
}
