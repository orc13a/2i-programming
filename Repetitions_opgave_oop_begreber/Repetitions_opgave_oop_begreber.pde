// 7 - Her har vi en arrayliste som kan inden holde alle Figur klasser også klasser som er sub-klasser til figur
//     Dermed bliver alle objekter i denne array set som en figur
ArrayList<Figur> allFigurs = new ArrayList<Figur>();

// 3, 4 - Vi laver en variable med typen Rect som kan holde Rect objekter
Rect firkant;

// 13 - Scope er det kode som er inden imellem {...}
void setup() {
  // 1 - Her giver vi firkant et objekt ud fra Rect sub-klassen til Figur klassen
  firkant = new Rect(10, 10, 10);
  
  allFigurs.add(firkant);
}

void draw() {
  for (Figur f : allFigurs) {
    f.display();
    f.update();
  }
}
