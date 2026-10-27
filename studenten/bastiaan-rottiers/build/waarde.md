# Waardeketen — Canvas-assistent WATTZAK

Datum: 20 oktober 2026

| Schakel | Waarde | Bron / aanname |
| --- | --- | --- |
| Met de hand | 30 min per belangrijk Canvas-document of opdracht: lezen, begrijpen en in de agenda zetten of ermee starten | inschatting Bastiaan, 20 oktober 2026 |
| Met de tool | maximaal 4 min per run, inclusief de uitvoer nakijken | inschatting Bastiaan, 20 oktober 2026 |
| Winst per taak | 30 − 4 = **26 min** | berekening |
| Volume | 8 runs per maand | minstens 6 belangrijke documenten + 1 à 2 opdrachten per maand; voorzichtig afgerond |
| Winst per week | 2 taken × 26 min = **52 min** (≈ 0,87 uur) | aanname: 4 weken per maand |
| Winst per maand | 8 taken × 26 min = **208 min** (≈ 3,47 uur) | berekening |
| Winst per jaar | 96 taken × 26 min = **2.496 min** = **41,6 uur** | aanname: 12 maanden per jaar |
| Kost van de tool per jaar | €0,40 × 12 = **≈ €4,80** met GPT-6.1 Sol | kostenmeting in `build/kosten.md` |

## Jaarwaarde

| Schakel | Waarde | Bron / aanname |
| --- | ---: | --- |
| Uurkost | €20 per uur | voorzichtige uurwaarde voor één WATTZAK-teamlid; aanname van Bastiaan, geen werkelijk loon |
| Brutowaarde per jaar | 41,6 uur × €20 = **€832,00** | berekening |
| Kost van de tool per jaar | **€4,80** | `build/kosten.md` |
| Netto waarde per jaar | €832,00 − €4,80 = **€827,20** | berekening |

## Zwakste cijfer

De 30 minuten handmatig werk is een schatting, geen tijdsmeting. Als de werkelijke tijd maar 15 minuten is, blijft de winst 11 min per taak: 96 × 11 min = **17,6 uur per jaar**, vóór aftrek van de toolkost.

## Week 5: waardeketen met fouten herstellen

Datum: 27 oktober 2026. De schattingen van **30 minuten handwerk** en **4 minuten draaien inclusief nakijken** zijn opnieuw bevestigd, ook voor het nalezen van financieel plan en marktonderzoek. De week-4-berekening hierboven blijft als historiek staan. De vier minuten omvatten draaien en nakijken samen; afzonderlijke tijden zijn **nog niet gemeten**. De tijd per handmatige deelstap is eveneens **nog niet gemeten**.

Voor deze berekening: v7 met Sol medium. In de foutmargetest: **3/5, 3/5 en 4/5**, n = 5 inputs, drie rondes; samen 10/15 juist. Gemiddelde juistheid 66,7%, geobserveerd bereik 60–80%. Dit gemiddelde is geen extra vierde run.

### Eigen tijdwaarde: €20 per uur

| Schakel | Gemiddeld scenario | Bron / aanname |
|---|---|---|
| Handmatig werk | Opdracht/document lezen, begrijpen en bepalen wat nog moet gebeuren: samen **30 min** | Eigen schatting, bevestigd op 27 oktober. Verdeling over de stappen nog niet gemeten. |
| Draaien + nakijken | **4 min** | Eigen schatting, bevestigd op 27 oktober. Afzonderlijke tijden nog niet gemeten. |
| Fouten herstellen | (1 − 10/15) × 30 min = **10 min per taak** | Lesformule; aanname dat één fout herstellen even lang kost als de volledige taak handmatig doen. |
| Totale tooltijd | 4 + 10 = **14 min** | Berekening; fouten herstellen komt boven op draaien/nakijken. |
| Winst per taak | 30 − 14 = **16 min** | Berekening. |
| Volume | Gemiddeld **0,4 taak per werkdag**, **2 per week**, **8 per maand**, **96 per jaar** | Bestaande volumeschatting uit week 4. Voor de dag- en weekweergave: 20 werkdagen en 4 weken per maand; geen kalendergemiddelde. Jaar: 12 maanden. |
| Urenwinst | **0,107 uur per werkdag**, **0,533 uur per week**, **2,133 uur per maand**, **25,6 uur per jaar** | Tijdwinst × volume / 60; geen vermenigvuldiging met vier groepsleden. |
| Uurwaarde | **€20** | Eigen tijdwaarde uit week 4; geen werkelijk loon en geen gemeten werkgeverskost. |
| Jaarwaarde vóór toolkost | 25,6 × €20 = **€512** | Berekening. |
| Toolkost per taak | **€0,03212532** | API-equivalente raming op gemeten gemiddelde tokens van Sol in de modeltest, zonder cachekorting; zie kosten.md. |
| Toolkost per maand / jaar | **€0,25700256 / €3,08403072** | 8 / 96 taken; standaardtarief en aanname $1 = €0,90. |
| Netto per jaar | €512 − €3,08403072 = **€508,92** | Tijdwaarde minus API-equivalente kost; geen werkelijk gerealiseerde kasbesparing. |

### Bereik bij laagste en hoogste score

| Schakel | 3/5 juist: 60% | Gemiddeld 10/15: 66,7% | 4/5 juist: 80% |
|---|---:|---:|---:|
| Fouten herstellen | 12 min | 10 min | 6 min |
| Tooltijd incl. nakijken en herstel | 16 min | 14 min | 10 min |
| Winst per taak | 14 min | 16 min | 20 min |
| Uren per jaar | 22,4 | 25,6 | 32 |
| Waarde aan €20 per uur | €448 | €512 | €640 |
| Toolkost per jaar | €3,08403072 | €3,08403072 | €3,08403072 |
| Netto per jaar | **€444,92** | **€508,92** | **€636,92** |

Het bereik komt van de drie geobserveerde scores, niet van een statistisch betrouwbaarheidsinterval. De testset heeft een bekende tegenstrijdigheid bij T08; deze rekenscenario's zijn geen gevalideerde voorspelling van prestaties op toekomstige financiële taken.

### Apart scenario: werkgeverskost €30 per uur

De les gebruikt als vuistregel bruto × 1,5. **Als** het brutoloon €20 per uur is, wordt de werkgeverskost in dat scenario €30. Dit is een aparte loonaanname: de eigen €20 tijdwaarde hierboven is niet ineens een brutoloon. Er is voor WATTZAK geen werkelijke loonkost gemeten.

| Schakel | Gemiddeld | Bij 3/5 | Bij 4/5 |
|---|---:|---:|---:|
| Uren gewonnen per jaar | 25,6 | 22,4 | 32 |
| Werkgeverskost per uur | €30 | €30 | €30 |
| Jaarwaarde vóór toolkost | €768 | €672 | €960 |
| Netto na €3,08403072 toolkost | **€764,92** | **€668,92** | **€956,92** |

Bron voor de vuistregel: [les week 5, value chain](../../../cursus/week-05/README.md#waarde-de-value-chain-met-de-foutmarge-erin). Dit is een rekenaanname, geen loonberekening voor een concrete werkgever.

### Zwakste cijfer: de 30 minuten handwerk

De zwakste schakel blijft de geschatte tijd van het handwerk. Halveer die tot **15 min** en gebruik ook **15 min** als tijd om één fout volledig met de hand te herstellen. De tooltijd van 4 min en het volume blijven gelijk.

| Schakel bij 15 min handwerk | Gemiddeld | Bij 3/5 | Bij 4/5 |
|---|---:|---:|---:|
| Fouten herstellen | 5 min | 6 min | 3 min |
| Tooltijd incl. nakijken en herstel | 9 min | 10 min | 7 min |
| Winst per taak | 6 min | 5 min | 8 min |
| Uren per jaar | 9,6 | 8 | 12,8 |
| Netto aan €20 tijdwaarde | **€188,92** | **€156,92** | **€252,92** |
| Netto aan €30 werkgeverskost, apart scenario | **€284,92** | **€236,92** | **€380,92** |

Aan €20 tijdwaarde verlaagt halvering van de handwerktijd het gemiddelde netto met **€320**. Het volledige scorebereik bij 30 minuten verschuift het netto met **€192**. Aan €30 werkgeverskost zijn die effecten respectievelijk **€480** en **€288**. De geschatte handwerktijd beweegt de uitkomst dus sterker dan de in deze test geobserveerde scorevariatie.

### Nog te meten

De tijden per handmatige stap en de afzonderlijke draai- en nakijktijd. Verder is de herstelduur van een fout nog niet werkelijk gemeten en is de kwaliteit op de nieuwe taken rond financieel plan en marktonderzoek nog niet afzonderlijk getest. De vier minuten en dertig minuten zijn bevestigde schattingen, geen chronometermetingen.
