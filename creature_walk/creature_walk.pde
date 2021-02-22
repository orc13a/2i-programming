float x = 1;
float y = 10;
//float z = 1000;


void setup() {
 size(800, 800);
 frameRate(60);
}

void draw() {
  clear();
  
  noStroke();
  fill(66, 135, 245);
  circle(x++, y++, 100);
  fill(245, 147, 66);
  circle(x++, y++, 50);
}
