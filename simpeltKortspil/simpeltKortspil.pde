Kortspil kortspil;

void setup() {
  size(600, 600);
  background(#333333);
  
  //textAlign(CENTER);
  rectMode(CENTER);
  
  kortspil = new Kortspil();
  kortspil.lavAlleKort();
  
  kortspil.visScore();
}

void draw() {
  
}

void mousePressed() {
  clear();
  background(#333333);
  
  if(kortspil.kortListe.size() > 0) {
    kortspil.traekKort().display();
  } else {
    textAlign(CENTER);
    textSize(18);
    fill(255);
    text("Ikke flere kort i bunken!", width/2, height/2);
  }
  
  kortspil.visScore();
}
