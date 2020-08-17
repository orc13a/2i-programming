// Fik ikke lavet så meget.

float x = 1;
float y = 10;
float z = 1000;


void setup() {
 size(800, 800);
 frameRate(60);
}

void draw() {
  clear();
  
  x = x + 1 + sin(z);
  y = y + 1 + cos(z);
  
  rect(x, y, 25, 25);
}
