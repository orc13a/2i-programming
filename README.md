# Spørgsmål om polymorfi

## a.) Hvad er nedarvning og hvordan fungerer extends?
Nedarvning (extends) er når man udvider en allerede eksisterende klasse. Den klasse som man laver en nedarvning fra bliver så forældre klassen og dens metoder kan man også kalde fra sub-klassen som er den klasse som er en nedarvning fra forældre klassen.

Som ses på kode eksemplet, så hvis man tilføjer et nyt `brand` så vil man stadig kun få det `brand` til at kører. Det kan man fordi at forældre klassen `Car` har en metode til at kører og det kan `Brand` klassen godt kalde. Derfor når man laver et nyt `Brand` objekt laver man automatisk også en ny `Car` objekt.

![kode eksemple](/images/q-a2.PNG)

## b.) Nævn "fordele" ved nedarvning
Fordelene ved nedarvning er vel at man ikke skal gentage sin kode mange gange når man laver flere objekter.

## c.) Hvad betyder polymorfi og hvordan virker det?
Polymorfi betyder `mange former` og det virker ved at man laver en array liste af objekter, og så kan man gennem loops få dem alle til at udføre de samme ting. Eks hvis man har hund og kat i listen, så kan de begge godt sove()?

Polymorfi er at objekter kan have forskellige former under forskellige omstændigheder. Som ses på billede, vi tilføjer 2 `Brand` objekter til vores `allCars` array. Når `Brand` objekterne kommer ind i arrayet vil de objekter blive set som `Car` objekter. `Brand` objekterne bliver accepteret af arrayet fordi de har `Car` som forældre klasse.

![kode eksemple](/images/q-b.PNG)

## d.) Nævn "fordele" ved polymorfi?
Det kan gøre koden mere overskueligt at man nemt kan lave et for loop som kan kører igennem alle de biler man har og få dem til at køer. Med Polymorfi behøver vi ikke at lave nogle tjeks på hvilken bil der er.

---

# Hvad er de forkellige polymorfi typer?

## hvilke typer polymorfi findes der indenfor oop?
### Der er fire typer

1. Subtype polymorphism
1. Parametric polymorphism
1. Ad hoc polymorphism
1. Coercion polymorphism

### Subtype polymorphism
Dette er den mest normale form for polymorfi, det er som vi har brugt endtil videre og er den type polymorfi som der er skrevet om i spørgsmålene ovenover.
Det når man har et klasse navn, men man kan refere til flere forskellige sub-klasser.

### Parametric polymorphism
Parametric polymorfi giver specifikt en måde at bruge en funktion til at intregere med flere forskellige typer.

### Ad hoc polymorphism
Det er når en funktion kan have det samme navn eller symbol man kan gøre forskellige ting.
Hvis vi bruger `+` som et eksempel. Hvis man plusser to `int` vil man få den samlede sum, som vi kender det fra matematik. Dog hvis man bruger samme `+` funktion men med to `Stings` så vil programmet sætte `String`'ene sammen til en `String`.

### Coercion polymorphism
Coercion polymorfi bruges til at ændre en type. Det kan eks. ændre en talværdi fra `int` til `float`, og tilbage. Så et objekt's type kan være besluttet når programmet bliver kørt, men en funktion kan virke med andre typer.

## hvilken type polymorfi har i indtil nu anvendt?
Vi har vel lært om om den alle sammen, men den seneste er mere speciel end de andre, efter der mere indenfor `OOP`.

---

#### Gruppe
Gustav og Oliver C