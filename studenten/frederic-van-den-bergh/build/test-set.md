# Testset

Elke rij is een echt bericht (zonder namen of nummerplaten) met het juiste antwoord, dat jij als baas hebt bepaald.
Run 1 en Run 2 vul je pas in nadat de tool met de huidige prompt.md heeft gedraaid.

| ID | Input | Juiste soort | Juiste dringendheid | Waarom | Run 1 | Run 2 |
|---|---|---|---|---|---|---|
| T01 | Mistlicht vooraan links werkt niet | verlichting | kan wachten | Niet dringend, het mistlicht moet gewoon nagekeken worden. | verlichting / snel nakijken (voertuig: niet vermeld) | verlichting / snel nakijken (voertuig: niet vermeld) |
| T02 | Spatlap rechts achter is kapot | carrosserie | kan wachten | De spatlap heeft geen invloed op het rijden van de vrachtwagen. | carrosserie / kan wachten (voertuig: niet vermeld) | carrosserie / kan wachten (voertuig: niet vermeld) |
| T03 | Ik zit met een versleten band op mijn remorque kant chauffeur 3de as. nummerplaat: Q-XXX-000 | banden | snel nakijken | Versleten band: niet acuut gevaarlijk, maar hij moet nagekeken worden. Er staat geen tijdstip in het bericht, de tool mag er geen verzinnen. | banden / direct terugkeren naar depot (voertuig: remorque, kant chauffeur, 3de as, nummerplaat Q-XXX-000) | banden / snel nakijken (voertuig: remorque, kant chauffeur, 3de as, Q-XXX-000) |
| T04 | Bache remorque is kapot | carrosserie | snel nakijken | De bache moet werken. Het probleem moet 's avonds in de garage nagekeken worden. Daarna wordt de bache hersteld of de remorque vervangen. | carrosserie / snel nakijken (voertuig: remorque) | onzeker / onzeker (voertuig: remorque) |
| T05 | Ik hoor lucht blazen onder de vrachtwagen | onzeker | snel nakijken | Je kan nog rijden, dus snel nakijken. Lucht blazen kan het remsysteem of iets anders zijn, dus de soort is onzeker. (Na Run 1 twee keer aangepast: dringendheid eerst onzeker, dan snel nakijken; soort eerst remmen, dan onzeker.) | onzeker / direct terugkeren naar depot (voertuig: niet vermeld) | onzeker / onzeker (voertuig: niet vermeld) |
| T06 | la benne paut pas monter | ander | direct terugkeren naar depot | Dringend: de remorque moet direct vervangen worden. | ander / direct terugkeren naar depot (voertuig: niet vermeld) | onzeker / onzeker (voertuig: niet vermeld) |
| T07 | Rempedaal zakt door tot op de vloer en de vrachtwagen stopt amper, sta aan de kant | remmen | direct stilleggen | Remmen die falen zijn de gevaarlijkste fout. De wagen mag niet meer rijden, ook niet traag naar het depot. De baas moet meteen ingrijpen en een takeldienst sturen. | remmen / direct stilleggen (voertuig: niet vermeld) | remmen / direct stilleggen (voertuig: niet vermeld) |
| T08 | Achterlicht links stuk | verlichting | snel nakijken | Heel kort bericht. Een achterlicht is verplicht en andere weggebruikers zien de wagen anders niet, dus niet "kan wachten". Het is geen stilleggen. Voertuig niet vermeld. | verlichting / snel nakijken (voertuig: niet vermeld) | verlichting / snel nakijken (voertuig: niet vermeld) |
| T09 | Allo, mon pneu avant gauche van de camion verliest lucht, heb al 2x moeten oppompen vandaag | banden | direct terugkeren naar depot | Frans/Nederlands door elkaar. Een band die tijdens het rijden lucht verliest, geeft kans op een klapband. Zelfde regel als het voorbeeld met de remorque 22. Voertuig: vrachtwagen (camion), links voor. | banden / direct terugkeren naar depot (voertuig: camion, voorband links) | banden / direct terugkeren naar depot (voertuig: camion) |
| T10 | Er is iets met de wagen, hij trilt raar | onzeker | onzeker | Te weinig info. Het kan de banden, de wielophanging of iets anders zijn, en je weet niet of het gevaarlijk is. De tool moet hier "onzeker" zeggen en niet gokken. Voertuig niet vermeld. | onzeker / onzeker (voertuig: niet vermeld) | onzeker / direct terugkeren naar depot (voertuig: niet vermeld) |

## Succespercentage

- Run 1 (T05, T06, T07, T09, T10): **4 op 5 juist (n = 5, 1 run)**. Fout: T05 (v1).
- Run 1 (T01, T02, T03, T04, T08, met v2): **3 op 5 juist (n = 5, 1 run)**. Fouten: T01, T03.
- Run 2 (alle tien, met v2): **5 op 10 juist (n = 10, 1 run)**. Fouten: T01, T04, T05, T06, T10.
- **Samen: 12 op 20 juist (n = 10, 2 runs).**
- Foutklassen over beide runs: F1 = 4, F5 = 1, F6 = 3 (8 fouten van 20 antwoorden).
- Run 1 samen (alle tien): **7 op 10 juist (n = 10, 1 run)**. Let op: de eerste vijf draaiden met v1, de tweede vijf met v2.

## Foutklassen

| ID | Run | Klasse | Wat er gebeurde |
|---|---|---|---|
| T05 | Run 1 (v1) | F5 | Model twijfelde bij de soort (onzeker), maar koos toch direct terugkeren naar depot |
| T01 | Run 1 (v2) | F1 | Model koos snel nakijken, juist is kan wachten |
| T03 | Run 1 (v2) | F1 | Model koos direct terugkeren naar depot, juist is snel nakijken |
| T01 | Run 2 (v2) | F1 | Model koos opnieuw snel nakijken, juist is kan wachten |
| T04 | Run 2 (v2) | F6 | Run 1 juist (carrosserie / snel nakijken), Run 2 onzeker / onzeker |
| T05 | Run 2 (v2) | F1 | Model koos onzeker / onzeker, juist is onzeker / snel nakijken |
| T06 | Run 2 (v2) | F6 | Run 1 juist (ander / direct terugkeren), Run 2 onzeker / onzeker (Run 1 met v1) |
| T10 | Run 2 (v2) | F6 | Run 1 juist (onzeker / onzeker), Run 2 onzeker / direct terugkeren naar depot (Run 1 met v1) |

## Open punten
- Zichtproblemen (ruitenwisser, ruitenwisserspuit) vallen onder soort "ander". Ruitenwisser kapot: snel nakijken. Ruitenwisserspuit kapot: kan wachten. Beslissen: nieuwe soort "zicht" of "ander" houden.
- T05: besloten op "onzeker" (na de definitie van direct terugkeren: de wagen kan nog rijden, en dat staat niet in het bericht).
- Nog geen testrij voor het onderscheid ruitenwisser (snel nakijken) en ruitenwisserspuit (kan wachten). Eventueel T11 en T12 toevoegen.
