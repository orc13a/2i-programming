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
    rect(width/2, height/2, 200, 200, 10, 10, 10, 10);
    fill(0);
    text(name, width/2, height/2);
  }
}
