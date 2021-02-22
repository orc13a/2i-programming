creature oli ;

class creature {
  int x = 10;
  int y = 10;
  int bodySize = 5;
  
  void body() {
    circle(x, y, bodySize);
  }
}

void setup() {
  size(800, 800);
  oli = new creature();
}

void draw() {
  clear();
  background(0);
  
  oli.bodySize = 20;
  oli.body();
  oli.x++;
  oli.y++;
}
