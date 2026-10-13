# Testset

Zelf gegenereerd, geen echte berichten. Het succespercentage geldt als bovengrens.

Juiste antwoord vooraf geschreven, vóór de tool draait.

Nakijkregel: punt of komma maakt niet uit. `79.4 kg` en `79,4 kg` zijn allebei juist.

| # | Input | Juist antwoord | Waarom | Run 1 | Run 2 |
|---|---|---|---|---|---|
| 1 | "Ik ben [naam] 21 jaar, ik train al 4 jaar en ik wil sterker worden. Momenteel squat ik 245kg, bench ik 142.5kg en deadlift ik 270kg" | `{"geslacht":"niet vermeld","lichaamsgewicht":"niet vermeld","squat":"245 kg","bench":"142,5 kg","deadlift":"270 kg","total":"niet vermeld"}` | Geslacht, lichaamsgewicht en total staan niet in het bericht. | juist | juist |
| 2 | "Ik ben [naam], vrouw, 67,5 kg. Mijn beste squat is 120 kg, bench 72,5 kg en deadlift 150 kg." | `{"geslacht":"vrouw","lichaamsgewicht":"67,5 kg","squat":"120 kg","bench":"72,5 kg","deadlift":"150 kg","total":"niet vermeld"}` | Total staat niet in het bericht, de rest wel. | juist | juist |
| 3 | "Hoi, ik weeg 93 kg en m'n total is 585 kg (squat 210, bench 145, deadlift 230). Man, 28." | `{"geslacht":"man","lichaamsgewicht":"93 kg","squat":"210 kg","bench":"145 kg","deadlift":"230 kg","total":"585 kg"}` | Alles staat letterlijk in het bericht. | juist | juist |
| 4 | "I'm a male lifter, weighing 185 lbs. My squat is 405 lbs, bench 275 lbs and deadlift 500 lbs." | `{"geslacht":"man","lichaamsgewicht":"185 lbs","squat":"405 lbs","bench":"275 lbs","deadlift":"500 lbs","total":"niet vermeld"}` | Niet omrekenen naar kg, want het model mag niets uitrekenen. Total staat niet in het bericht. | juist | juist |
| 5 | "Ik ben 82 kilo en man. Vorige wedstrijd: squat 180, bench 115, deadlift 215. Dus 510 totaal." | `{"geslacht":"man","lichaamsgewicht":"82 kg","squat":"180 kg","bench":"115 kg","deadlift":"215 kg","total":"510 kg"}` | Alles staat letterlijk in het bericht. | juist | juist |
| 6 | "Femme, 74 kg. Mon total est de 390 kg. Je n'ai pas les chiffres séparés pour squat, bench et deadlift." | `{"geslacht":"vrouw","lichaamsgewicht":"74 kg","squat":"niet vermeld","bench":"niet vermeld","deadlift":"niet vermeld","total":"390 kg"}` | Alleen het total staat in het bericht. | juist | juist |
| 7 | "Ik ben sterk." | `{"geslacht":"niet vermeld","lichaamsgewicht":"niet vermeld","squat":"niet vermeld","bench":"niet vermeld","deadlift":"niet vermeld","total":"niet vermeld"}` | Er staan geen getallen in het bericht. | juist | juist |
| 8 | "Ik ben een man en kom uit in de -83 kg klasse. Mijn squat is 170 kg, bench 110 kg en deadlift 210 kg." | `{"geslacht":"man","lichaamsgewicht":"niet vermeld","squat":"170 kg","bench":"110 kg","deadlift":"210 kg","total":"niet vermeld"}` | -83 kg is een gewichtsklasse, geen lichaamsgewicht. | juist | juist |
| 9 | "Ik ben een vrouw van 68 kg. Ik squat 130 kg, bench rond de 100 kg en deadlift 160 kg." | `{"geslacht":"vrouw","lichaamsgewicht":"68 kg","squat":"130 kg","bench":"rond de 100 kg","deadlift":"160 kg","total":"niet vermeld"}` | Het model mag niets uitrekenen of afronden. | juist | juist |
| 10 | "I'm a 79.4 kg male. Squat 190 kg, bench 125 kg, deadlift 230 kg. Total 545 kg." | `{"geslacht":"man","lichaamsgewicht":"79,4 kg","squat":"190 kg","bench":"125 kg","deadlift":"230 kg","total":"545 kg"}` | Alles staat letterlijk in het bericht. | juist | juist |

Run 1: 10 op 10 juist (n = 10, 1 run). Elke output was identiek aan het juiste antwoord.

Run 2: 10 op 10 juist. Samen: 20 op 20 juist (n = 10, 2 runs). Geen F6: elke input gaf twee keer hetzelfde antwoord.
