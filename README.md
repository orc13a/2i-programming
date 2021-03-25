# BEGREBER
## 1. Klasse
En klasse er en form for skabalon til at lave et objekt ud fra.

## 1. Objekt (også kaldet instans)
Objekter er det som man før når man laver en variable ud fra en klasse.

## 1. Forskel på Reference og værdi
### Reference
Det er at man kan for eksemple pass et objekt til en funktion og når man så ændre på objektet i funktionen, så vil objektet også blive ændre ud af funktionen. 

### Værdi
Her der giver man en funktion en data fra en objekt, så vil den data kun blive ændre inde i funktionen. Dog vil objektet ikke blive ændret ud af funktionen.

![GIF af reference og værdi](https://blog.penjee.com/wp-content/uploads/2015/02/pass-by-reference-vs-pass-by-value-animation.gif)

## 1. Typer
Typer er det som siger hvad et variable indenholder.
Det kunne være `int`, `float`... men også klasse naven er en type.

## 1. Konvertering (engelsk "cast")
Det er når man ændre på en variables værdig til en anden type.

## 1. Nedarvning
Nedarving er når man laver en sub-klasse.
Sub-klasser kan bruge de samme metoder og data som er i forældre-klassen.
En klasse er en sub-klasse når man bruger keyworded `extends`.

## 1. Polymorfi
Alle klasser for eksemple i `ArrayList` ses som den samme type.
Så det er når man ser forskellige former som den samme, så sub-klasserne ser ud som deres forældre-klasse til programmet.

Polymorfi betyder at noget kan have forskellige former.

## 1. Konstruktører
Konstruktøreren er en metode som bliver kørt så snart man laver at et nyt objekt (`new`) af klassen.

## 1. Metoder
Metoder er bare funktioner som er inde i en klasse.

## 1. Metoders returtyper
Metoder kan retunere alle typer men vil, det kan være `int`, `float` eller en klasse.
Disse metoder som retunere noget skal retunere noget og skal derfor indenhold keyworded `return`.

## 1. Overload
Det er når man har flere af de samme metoder/funktioner men nogen vil have flere parameter end de andre.

## 1. Override
Det er når en sub-klasse overskriver sin forældre-klasse samme metode.

## 1. Scope
Et scope er kode mellem `{`...`}`.
Der er nogen andre regler for hvordan variabler og funktioner kan opfører sig.


# KEYWORDS
## 1. class
Det er key ordet som siger at navnet der kommer efter `class` er en klasse.
Altså `class` betyder at man har med en klasse at gøre og dette er en skabalon til at lave objekter.

## 1. new
Det er key ordet man bruger til at sige at nu laver man et nyt objekt ud af den klasse man angiver efter `new`.

## 1. extends
Det er key ordet til at sige at men laver en udvidelse af en klasse.
Den klasse bliver så til en sub-klasse og den klasse man udvider bliver til forældre-klassen.

## 1. super 
Det er key ordet til at kalde forældre-klassens konstroktør i sub-klassen.
Dette skal man gøre for at sub-klassen virker.

## 1. this
Det er key ordet til at referere til sig selv.
Hvis man skriver `this` inde i en klasse så vil den altid tage det man skriver efter `this` fra sig selv.
