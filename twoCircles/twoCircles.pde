int amountOfIndex = 6;
float[] coorArr = new float[amountOfIndex];

void setup() {
  size(800, 800);
  
  for(int i = 0; i < coorArr.length; i++) {
    coorArr[i] = random(0, width);
    // For y koordinat
    if(i % 2 == 0) {
      coorArr[i] = random(0, height);
    }
    
    // For radius
    if(i % 3 == 0) {
      coorArr[i] = random(0, (width/4));
    }
  }
  
  println(coorArr);
}

// Funktionen
void circles(float cx1, float cy1, float cr1, float cx2, float cy2, float cr2) {
  circle(cx1, cy1, cr1);
  circle(cx2, cy2, cr2);
}

void draw() {
  clear();
  background(255);
  
  fill(0);
  circles(coorArr[0], coorArr[1], coorArr[2], coorArr[3], coorArr[4], coorArr[5]);
}
