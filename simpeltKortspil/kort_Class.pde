class Kort {
  // Data
  String name;
  int value;
  
  Kort(String newName, int newValue) {
    name = newName;
    value = newValue;
  }
  
  // Metoder
  void display() {
    fill(255);
    rect(width/2, height/2, 150, 200, 10, 10, 10, 10);
    fill(0);
    textSize(14);
    textAlign(LEFT);
    text(name, 238, 225);
    textAlign(RIGHT);
    text(name, 360, 385);
  }
}
