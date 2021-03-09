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

#### Gruppe
Gustav og Oliver C