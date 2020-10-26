// DEL 1

// En funktion som ikke tager nogen inputs 
// og dermed ikke returner noget
void skrivHej() {
  println("Hej");
}

// En funktion som tager et input og ikke returner noget efter
// Da det er en void
void skrivAlt(String tekst) {
  println(tekst);
}

// En funktion som tager et input og retuner en int
int givAldre(int aldre) {
  return aldre;
}

// DEL 2

// DEL 2.1

int antalTegn(String str, char tegn) {
  int antal = 0;
  
  for(int i = 0; i < str.length(); i++) {
    if(str.charAt(i) == tegn) {
      antal++;
    }
  }
  
  return antal;
}


// DEL 2.2
String[] ordListe = {"HAHA","JOJO","HAHA", "JOJO","HAHA", "JOJO","HAHA", "JOJO","HAHA", "JOJO","HAHA","JOJO","HAHA","JOJO","JOJO","JOJO"};

int antalTegn(String str, String[] array) {
  int antal = 0;
  
  for(int i = 0; i < array.length; i++) {
    if(array[i] == str) {
      antal++;
    }
  }
  
  return antal;
}


// DEL 3

// ♠♣♥♦

String[] alleKort = {"♠ A", "♠ 2", "♠ 3", "♠ 4", "♠ 5", "♠ 6", "♠ 7", "♠ 8", "♠ 9", "♠ 10", "♠ J", "♠ Q", "♠ K", "♣ A", "♣ 2", "♣ 3", "♣ 4", "♣ 5", "♣ 6", "♣ 7", "♣ 8", "♣ 9", "♣ 10",  "♣ J", "♣ Q", "♣ K", "♠ J", "♠ Q", "♠ K", "♥ A", "♥ 2", "♥ 3", "♥ 4", "♥ 5", "♥ 6", "♥ 7", "♥ 8", "♥ 9", "♥ 10", "♥ J", "♥ Q", "♥ K", "♦ A", "♦ 2", "♦ 3", "♦ 4", "♦ 5", "♦ 6", "♦ 7", "♦ 8", "♦ 9", "♦ 10", "♦ J", "♦ Q", "♦ K"};
String[] trukketKort = new String[alleKort.length];
int kortTrukket = 0;


void setup() {
  size(400, 400);
  
  background(0);
  text("Klik ' T ' for at trække", 25, 25);
}

String kortTrak(String[] array) {
  if (kortTrukket < alleKort.length) {
    float randomInt = random(1, array.length);
  
    trukketKort[kortTrukket] = alleKort[int(randomInt)];
    kortTrukket++;
    
    return alleKort[int(randomInt)];
  } else {
    return " !Du skal blande!";
  }
}

void blandKort(String[] array) {
  for(int i = 0; i < array.length; i++) {
    array[i] = null;
    kortTrukket++;
  }
  println(array);
}

void draw() {}

void keyPressed() {
  clear();
  background(0);
  text("Klik ' T ' for at trække", 25, 25);
  text("Klik ' B ' for at blande", 200, 25);
  
  if(key == 't') {
    text("Du trak: " + kortTrak(alleKort), 25, 50);
  }
  
  if(key == 'b') {
    blandKort(trukketKort);
  }
}
