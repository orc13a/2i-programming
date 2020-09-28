//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast

int antalKast = 60;

int[] alleKast = new int[antalKast];

int brugtKast = 0;

int numberOfOnes = 0;
int numberOfTwos = 0;
int numberOfThrees = 0;
int numberOfFour = 0;
int numberOfFive = 0;
int numberOfSixs = 0;

void setup() {
  size(600, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
  text("Fordeling af terningekast", 50, 750);
  text("1'er", 10, 720);
  text("2'er", 68, 720);
  text("3'er", 118, 720);
  text("4'er", 170, 720);
  text("5'er", 218, 720);
  text("6'er", 270, 720);
}

void draw() {
}

int lavTerningeKast(float min, float max) {
  int nyesteKastet = int(random(min, max + 1));
  if(nyesteKastet == 1){
    numberOfOnes++;
  }
  if(nyesteKastet == 2){
    numberOfTwos++;
  }
  if(nyesteKastet == 3){
    numberOfThrees++;
  }
  if(nyesteKastet == 4){
    numberOfFour++;
  }
  if(nyesteKastet == 5){
    numberOfFive++;
  }
  if(nyesteKastet == 6){
    numberOfSixs++;
  }
  
  return nyesteKastet;
}

void fjernSidsteKast() {
  if(alleKast[0] != 0 && alleKast[0] > 0) {
    if(alleKast[brugtKast-1] == 1) {
      numberOfOnes--;
    }
    if(alleKast[brugtKast-1] == 2) {
      numberOfTwos--;
    }
    if(alleKast[brugtKast-1] == 3) {
      numberOfThrees--;
    }
    if(alleKast[brugtKast-1] == 4) {
      numberOfFour--;
    }
    if(alleKast[brugtKast-1] == 5) {
      numberOfFive--;
    }
    if(alleKast[brugtKast-1] == 6) {
      numberOfSixs--;
    }
    alleKast[brugtKast-1] = 0;
    brugtKast--;
  }
}

void tegnFordeling() {
  if(alleKast[0] != 0 && alleKast[0] > 0) {
    if(numberOfOnes != 0) {
      text(numberOfOnes + " Stk", 10, (670 - (10 * numberOfOnes)));
      rect(0, (700 - (numberOfOnes * 10)), 50, (10 * numberOfOnes));
    }
    if(numberOfTwos != 0) {
      text(numberOfTwos + " Stk", 65, (670 - (10 * numberOfTwos)));
      rect(53, (700 - (numberOfTwos * 10)), 50, (10 * numberOfTwos));
    }
    if(numberOfThrees != 0) {
      text(numberOfThrees + " Stk", 115, (670 - (10 * numberOfThrees)));
      rect(106, (700 - (numberOfThrees * 10)), 50, (10 * numberOfThrees));
    }
    if(numberOfFour != 0) {
      text(numberOfFour + " Stk", 165, (670 - (10 * numberOfFour)));
      rect(212, (700 - (numberOfFour * 10)), 50, (10 * numberOfFour));
    }
    if(numberOfFive != 0) {
      text(numberOfFive + " Stk", 215, (670 - (10 * numberOfFive)));
      rect(265, (700 - (numberOfFive * 10)), 50, (10 * numberOfFive));
    }
    if(numberOfSixs != 0) {
      text(numberOfSixs + " Stk", 265, (670 - (10 * numberOfSixs)));
      rect(318, (700 - (numberOfSixs * 10)), 50, (10 * numberOfSixs));
    }
  }
}

void udskrivKast() {
  for(int i=0; i < alleKast.length; i++) {
    if(alleKast[i] != 0) {
      if(i < 40) {
        text("Kast nr. " + (i + 1) + " = " + alleKast[i], 360, (50 + (i * 17)));
      } else {
        text("Kast nr. " + (i + 1) + " = " + alleKast[i], 480, ((50 + (i * 17)) - 680));
      }
    }
  }
}




void keyPressed() {  
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);
  
  stroke(255);
  line(0, 700, 325, 700);
  line(0, 690, 325, 690);
  
  
  noStroke();
  text("Fordeling af terningekast", 50, 750);
  text("1'er", 10, 720);
  text("2'er", 68, 720);
  text("3'er", 118, 720);
  text("4'er", 170, 720);
  text("5'er", 218, 720);
  text("6'er", 270, 720);

  if (key=='k') {
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    if(brugtKast != antalKast && brugtKast <= antalKast) {
      int kast = lavTerningeKast(1, 6);
      alleKast[brugtKast] = kast;
      brugtKast++;
      text("DIT KAST BLEV:" + kast, 50, 75);
    } else {
      text("Du har brugt alle dine kast!", 50, 75);
    }
  }

  if (key == 's') {
    //OPGAVE:  lav manglende funktion til at et terningekast
    fjernSidsteKast();
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast();
  //println(alleKast);
  //println(numberOfOnes);
}
