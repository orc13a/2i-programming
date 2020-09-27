//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast

int[] alleKast = new int[20];

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
}

void draw() {
}

int lavTerningeKast(float min, float max) {
  return int(random(min, max + 1));
}

void fjernSidsteKast() {
  alleKast[brugtKast-1] = 0;
  brugtKast--;
}

void tegnFordeling() {
  if(brugtKast <= 20 && alleKast.length != 0) {
    for(int i=0; i <= alleKast.length-1; i++) {
      
    }
  }
}

void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k') {
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    if(brugtKast != 20 || brugtKast > 20) {
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
  //udskrivKast();
  //println(alleKast);
}
