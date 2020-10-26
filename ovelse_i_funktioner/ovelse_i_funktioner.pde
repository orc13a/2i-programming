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

void setup() {
  println(antalTegn("JOJO", ordListe));
}
