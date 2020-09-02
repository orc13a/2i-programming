float boxX = 400, boxY = 400;
float boxW = 600, boxH = 600;

float ballX = 400, ballY = 400;

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  clear();
  background(0);
  
  if(boxW == 20 && boxH == 20) {
      boxW = 20;
      boxH = 20;
  } else {
    boxW--;
    boxH--;
  } 
  
  
  
  fill(255);
  noStroke();
  circle(ballX, ballY, 20); // Ball
  
  noFill();
  stroke(255);
  rect(boxX, boxY, boxW, boxH); // Box
  
}
