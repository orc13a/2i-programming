Kortspil kortspil;

void setup() {
  size(600, 600);
  background(#333333);
  
  textAlign(CENTER);
  rectMode(CENTER);
  
  kortspil = new Kortspil();
  kortspil.lavAlleKort();
}

void draw() {
  
}

void mousePressed() {
  print(kortspil.traetKort());
}
