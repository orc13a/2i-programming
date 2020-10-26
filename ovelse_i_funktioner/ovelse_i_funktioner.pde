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

  for (int i = 0; i < str.length(); i++) {
    if (str.charAt(i) == tegn) {
      antal++;
    }
  }

  return antal;
}


// DEL 2.2
String[] ordListe = {"HAHA", "JOJO", "HAHA", "JOJO", "HAHA", "JOJO", "HAHA", "JOJO", "HAHA", "JOJO", "HAHA", "JOJO", "HAHA", "JOJO", "JOJO", "JOJO"};

int antalTegn(String str, String[] array) {
  int antal = 0;

  for (int i = 0; i < array.length; i++) {
    if (array[i] == str) {
      antal++;
    }
  }

  return antal;
}







// DEL 3

// ♠♣♥♦

String[] alleKort = {"♠ A", "♠ 2", "♠ 3", "♠ 4", "♠ 5", "♠ 6", "♠ 7", "♠ 8", "♠ 9", "♠ 10", "♠ J", "♠ Q", "♠ K", "♣ A", "♣ 2", "♣ 3", "♣ 4", "♣ 5", "♣ 6", "♣ 7", "♣ 8", "♣ 9", "♣ 10", "♣ J", "♣ Q", "♣ K", "♠ J", "♠ Q", "♠ K", "♥ A", "♥ 2", "♥ 3", "♥ 4", "♥ 5", "♥ 6", "♥ 7", "♥ 8", "♥ 9", "♥ 10", "♥ J", "♥ Q", "♥ K", "♦ A", "♦ 2", "♦ 3", "♦ 4", "♦ 5", "♦ 6", "♦ 7", "♦ 8", "♦ 9", "♦ 10", "♦ J", "♦ Q", "♦ K"};
String[] trukketKort = new String[alleKort.length];
int kortTrukket = 0;


void setup() {
  size(400, 400);
  
  background(0);
  text("Klik ' T ' for at trække", 25, 350);
}

int randomNumber(String[] array) {
  return int(random(1, array.length));
};

String kortTrak(String[] array) {
  text("Kort tilbage: " + (trukketKort.length - kortTrukket), 200, 375);
  if (kortTrukket < alleKort.length) {
    
    int randomInt = randomNumber(alleKort);
    
    for(int i = 0; i < kortTrukket; i++) {
      while(alleKort[randomInt] != trukketKort[i]) {
        randomInt = randomNumber(alleKort);
        break;
      }
    }
    
    trukketKort[kortTrukket] = alleKort[randomInt];
    kortTrukket++;
    
    return alleKort[int(randomInt)];
  } else {
    return " !Du skal blande!";
  }
}

void blandKort(String[] array) {
  for (int i = 0; i < kortTrukket; i++) {
    array[i] = null;
  }
  kortTrukket = 0;
  text("Kort tilbage: " + (trukketKort.length - kortTrukket), 200, 375);
}

void visKort(String[] array) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] != null) {
      if(i < 10) {
        text(array[i], 25, 25 + (i * 17));
      }
      if(i >= 10 && i < 20) {
        text(array[i], 75, (25 + (i * 17)) - 170);
      }
      if(i >= 20 && i < 30) {
        text(array[i], 125, (25 + (i * 17)) - 340);
      } 
      if(i >= 30 && i < 40) {
        text(array[i], 175, (25 + (i * 17)) - 510);
      }
      if(i >= 40 && i < 50) {
        text(array[i], 225, (25 + (i * 17)) - 680);
      }
      if(i >= 50 && i < 58) {
        text(array[i], 275, (25 + (i * 17)) - 850);
      }
    }
  }
}

void draw() {
}

void keyPressed() {
  clear();
  background(0);
  text("Klik ' T ' for at trække", 25, 350);
  text("Klik ' B ' for at blande", 200, 350);

  if (key == 't') {
    text("Du trak: " + kortTrak(alleKort), 25, 375);
  }

  if (key == 'b') {
    blandKort(trukketKort);
  }
  
  visKort(trukketKort);
}
