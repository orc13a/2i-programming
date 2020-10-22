int amountOfIndex = 6;
float[] coorArr = new float[amountOfIndex];

void setup() {
  size(800, 800);
  
  // Push koordinaterne ind i arrayen
  for(int i = 0; i < coorArr.length; i++) {
    // For x koordinat
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
void circles(float[] array) {
  circle(array[0], array[1], array[2]);
  circle(array[3], array[4], array[5]);
}

void draw() {
  clear();
  background(255);
  
  fill(0);
  circles(coorArr);
}
