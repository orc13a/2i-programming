class Figur {
  float x;
  float y;
  float size;
  color c;
  
  // 8 - Her har vi Figur klassens konstruktører, som er en metode som bliver kaldt når man laver et nyt (new) objekt ud fra klassen.
  Figur(float x_, float y_, float size_) {
    x = x_;
    y = y_;
    size = size_;
    c = setColor();
  }
  
  // 9 - Her har vi en metode som er en funktion inden i en klasse. 
  void display() {
    noStroke();
    fill(c);
    
    displayFigur();
  }
  
  void update() {
    
  }
  
  // 10 - Her er en type vi kan retunere, her retunere vi en color 
  color setColor() {
    return color(random(255), random(255), random(255));
  }
  
  // 12 - Vi skriver denne metode også her for at sub-klasserne kan override den
  void displayFigur() {
    
  }
}

class Rect extends Figur {
  Rect(float x, float y, float size) {
    // Super kalder parent-klassens konstruktør
    super(x, y, size);
  }
  
  // 12 - Dette er den metode vi kan override med efter at parent-klassen også har denne metode
  void displayFigur() {
    rect(x, y, size, size);
  }
}
