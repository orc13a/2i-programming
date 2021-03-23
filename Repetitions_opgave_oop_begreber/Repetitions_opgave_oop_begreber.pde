ArrayList<Figur> allFigurs = new ArrayList<Figur>();

void setup() {
  
}

void draw() {
  for (Figur f : allFigurs) {
    f.display();
    f.update();
  }
}
