// Oliver Risager Christensen
// Programmering (ajrp) 
// 2i Kerm/It - HCØL 

// -----------------------------------------

float ballD = 20; // ball diameter

float boxX = 400, boxY = 400; // box x- og y-koordinat
float boxW = 600, boxH = 600; // box start brede og højde

// Hvis man ændre en af dem, kan man få bolden til at starte et andet sted. Bolden vil derfor bevæge sig anderledes
float ballX = 425, ballY = 400; // ball start x- og y-koordinater

float boxHitX = 0; // Om bolden har ramt en af kassen vægge (højre eller venstre væg). | boxHitX = 1; betyder venstre væg og 0 for højre væg 
float boxHitY = 0; // Om bolden har ramt en af kassen vægge (top eller bunden væg). | boxHitY = 1; betyder bunden væg og 0 for toppen

float ballSpeed = 2; // Hvor hurtigt bolden skal bevæge sig.

float wallSpeed = 0.5; // Hvor hurtugt væggene skal forminske.

void setup() {
  size(800, 800);
  rectMode(CENTER); // sætter kassen x- og y-koordinater til midten af kassen
}

void draw() {
  clear();
  background(0);
  
  
  // For bolden retning, hvis bolden rammer højre væg skal boldens x - med ballSpeed og hvis bolden har ramt bunden så skal boldens y - med ballSpeed  
  
  if(boxHitX == 0 && boxHitY == 0) { // Hvis bolden ikke har ramt ingen af væggene så skal den bare rygge en start retning.
    ballX = ballX + ballSpeed;
    ballY = ballY + ballSpeed;
  } else if(boxHitX == 1 && boxHitY == 0) { // Hvis bolden har ramt højre væg
    ballX = ballX - ballSpeed;
    ballY = ballY + ballSpeed;
  } else if(boxHitX == 1 && boxHitY == 1) { // Hvis bolden har ramt højre væg og bunden
    ballX = ballX - ballSpeed;
    ballY = ballY - ballSpeed;
  } else if(boxHitX == 0 && boxHitY == 1) { // Hvis bolden har ramt venstre væg 
    ballX = ballX + ballSpeed;
    ballY = ballY - ballSpeed;
  }
  
  // Hvad gør dette: ((width - boxW) / 2) + boxW) - (ballD / 2)?
  // Den tager breden af program vinduet og minuser det med kassens brede. Så dividere med 2.
  // Så har vi hvad længden mellem vinduets kant og kassens højre og venstre kant.
  
  // Så pluser vi med kassen brede for at få kassens højre vægs x-koordinat
  // Når vi ikke pluser med kassens brede så får vi kassens venstre væg
  
  // Når bolden rammer højre og bunden minuser vi med boldens radius, så bolden ikke går haldt igennem væggene.
  // Når bolden rammer vensre og toppen pluser vi med boldens radius, så bolden ikke går haldt igennem væggene.
  
  // Det samme gør vi for toppen og bunden.
  
  if(ballX > (((width - boxW) / 2) + boxW) - (ballD / 2)) {
    boxHitX = 1; // Her rammer bolden højre væg
  }
  
  if(ballY > (((height - boxH) / 2) + boxH) - (ballD / 2)) {
    boxHitY = 1; // Her rammer bolden bunden
  }
  
  if(ballX < (((width - boxW) / 2)) + (ballD / 2)) {
    boxHitX = 0; // Her rammer bolden venstre væg
  }
  
  if(ballY < (((height - boxH) / 2)) + (ballD / 2)) {
    boxHitY = 0; // Her rammer bolden toppen
  }
  
  
  
  if(boxW == ballD && boxH == ballD) { // Hvis kassens højde og brede er det samme som boldens diameter, så:
    boxW = ballD; // sæt kassens brede til boldens diameter
    boxH = ballD; // sæt kassens højde til boldens diameter
  } else { // Hvis det ikke er rigtig, så:
    boxW = boxW - wallSpeed; // Så skal kassen blive mindre
    boxH = boxH - wallSpeed; // Så skal kassen blive mindre
  }
  
  //println(((width - boxW) / 2) + boxW);
  
  fill(255); // Farver bolden hvid
  noStroke(); // Ingen kant til bolden
  circle(ballX, ballY, ballD); // ball circle(ball x-koordinat, ball y-koordinat, ball diameter);
  
  noFill(); // Ingen farve til kassen
  stroke(255); // Hvid kant til kassen
  rect(boxX, boxY, boxW, boxH); // Box rect(box x-koordinat, box y-koordinat, box brede, box højde);
  
}
