// Fik ikke lavet så meget, skulle hjælpe andre.

float x = 1;
float y = 1;
float z = 1000;


void setup() {
 size(800, 800);
 frameRate(60);
}

void draw() {
  clear();

  x = x + 1;
  y = y + 0.5 + sin(z);
  
  circle(x, y, 100);
  rect(x, y, 25, 25);
}
