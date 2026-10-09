# Testset

Elke rij is een echt bericht (zonder namen of nummerplaten) met het juiste antwoord, dat jij als baas hebt bepaald.
Run 1 en Run 2 vul je pas in nadat de tool met de huidige prompt.md heeft gedraaid.

| ID | Input | Juiste soort | Juiste dringendheid | Waarom | Run 1 | Run 2 |
|---|---|---|---|---|---|---|
| T01 | Mistlicht vooraan links werkt niet | verlichting | kan wachten | Niet dringend, het mistlicht moet gewoon nagekeken worden. | | |
| T02 | Spatlap rechts achter is kapot | carrosserie | kan wachten | De spatlap heeft geen invloed op het rijden van de vrachtwagen. | | |
| T03 | Ik zit met een versleten band op mijn remorque kant chauffeur 3de as. nummerplaat: Q-XXX-000 | banden | snel nakijken | Versleten band: niet acuut gevaarlijk, maar hij moet nagekeken worden. Er staat geen tijdstip in het bericht, de tool mag er geen verzinnen. | | |
| T04 | Bache remorque is kapot | carrosserie | snel nakijken | De bache moet werken. Het probleem moet 's avonds in de garage nagekeken worden. Daarna wordt de bache hersteld of de remorque vervangen. | | |
| T05 | Ik hoor lucht blazen onder de vrachtwagen | remmen | onzeker | Er staat niets over de druk in het bericht en ook niet of de chauffeur nog kan rijden. Lucht blazen kan het remsysteem zijn. "Direct terugkeren" veronderstelt dat de wagen nog kan rijden, en "direct stilleggen" is een takeldienst voor iets wat misschien klein is. De baas moet de chauffeur zelf bellen. | | |
| T06 | la benne paut pas monter | ander | direct terugkeren naar depot | Dringend: de remorque moet direct vervangen worden. | | |
| T07 | Rempedaal zakt door tot op de vloer en de vrachtwagen stopt amper, sta aan de kant | remmen | direct stilleggen | Remmen die falen zijn de gevaarlijkste fout. De wagen mag niet meer rijden, ook niet traag naar het depot. De baas moet meteen ingrijpen en een takeldienst sturen. | | |
| T08 | Achterlicht links stuk | verlichting | snel nakijken | Heel kort bericht. Een achterlicht is verplicht en andere weggebruikers zien de wagen anders niet, dus niet "kan wachten". Het is geen stilleggen. Voertuig niet vermeld. | | |
| T09 | Allo, mon pneu avant gauche van de camion verliest lucht, heb al 2x moeten oppompen vandaag | banden | direct terugkeren naar depot | Frans/Nederlands door elkaar. Een band die tijdens het rijden lucht verliest, geeft kans op een klapband. Zelfde regel als het voorbeeld met de remorque 22. Voertuig: vrachtwagen (camion), links voor. | | |
| T10 | Er is iets met de wagen, hij trilt raar | onzeker | onzeker | Te weinig info. Het kan de banden, de wielophanging of iets anders zijn, en je weet niet of het gevaarlijk is. De tool moet hier "onzeker" zeggen en niet gokken. Voertuig niet vermeld. | | |

## Open punten
- Zichtproblemen (ruitenwisser, ruitenwisserspuit) vallen onder soort "ander". Ruitenwisser kapot: snel nakijken. Ruitenwisserspuit kapot: kan wachten. Beslissen: nieuwe soort "zicht" of "ander" houden.
- T05: besloten op "onzeker" (na de definitie van direct terugkeren: de wagen kan nog rijden, en dat staat niet in het bericht).
- Nog geen testrij voor het onderscheid ruitenwisser (snel nakijken) en ruitenwisserspuit (kan wachten). Eventueel T11 en T12 toevoegen.