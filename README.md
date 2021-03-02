# Repetitionsspørgsmål - Marts 2021
## Hvad er et objekt og en klasse?
### Klasse
En klasse er en skabelon som man altid kan udvide. Skabelonen er til at give det grundlæggende properties og værdier. Når man laver et nyt objekt bliver det objekt bygget op på bagground af denne skabalon.

### Objekt
Et objekt er bygget op på den klasse som den er blevet skabt af. I nogen programmering sprog kan man også lave objekter uden at bruge en klasse som skabalon. Objekter kan lidt ses som et stort variable som kan inden holde variabler (data), en konstruktør (constructor) og metoder (funktioner).

## Hvad gør de to keywords "new" og "class"?
### Class
`class` keyword er ordet til at sige programmering sproget at denne code-scope er en skabalon til at bygge objekter.

### New
`New` keyword er et ord som i programmering sproget siger at man skal lave et nyt objekt ud fra den klasse man oplyser efter `New` ordet. 

![alt text](https://raw.githubusercontent.com/orc13a/2i-programming/repetitionssp%C3%B8rgsm%C3%A5l-marts-2021/class.PNG "Kode eksemple af en klasse og når man bruger klassen til at lave et objekt")

## Hvad er forkellen på "pass by reference" og "pass by value"
### Pass by reference
Hvis en funktion har en parameter som vi siger er `n`. Når vi kalder funktionen angiver vi en anden variable som hedder `x`. Parameteren `n` vil blive til `x` og når vi ændre i `n` vil vi også ændre i variablen `x`.

![alt text](https://raw.githubusercontent.com/orc13a/2i-programming/repetitionssp%C3%B8rgsm%C3%A5l-marts-2021/byRef.PNG "Kode eksemple af 'pass by reference'")

### Pass by value
Hvis en funktion har en parameter som vi siger er `n`, Når vi kalder funktionen angtiver vi en anden variable som hedder `x`. Så bruger vi værdien af `x`, men vi siger aldrig at `x` skal ændre sig.

![alt text](https://raw.githubusercontent.com/orc13a/2i-programming/repetitionssp%C3%B8rgsm%C3%A5l-marts-2021/byValue.PNG "Kode eksemple af 'pass by value'")

---
Oliver C, 2.i Kerm/It - HCØL