# Taak

- **Taak:** uit een vrij bericht van een powerlifter de gegevens halen die nodig zijn om de kracht te bepalen.
- **Wat erin gaat:** een bericht in eigen woorden, van mensen die ik ken of uit een aanvraag bij een coach of gym. Echte namen worden vervangen.
- **Wat eruit komt:** vijf velden: geslacht, lichaamsgewicht (kg), squat, bench, deadlift (of total) in kg. Staat iets er niet in: `niet vermeld`. Het model rekent niets uit; GL-points en niveau komen later uit een vaste formule.
- **Soort AI:** een taalmodel, want het lezen van vrije tekst is taal. Het niveau bepalen is een vaste regel, geen AI.
- **Controle:** per veld vergelijken met het antwoord dat ik vooraf opschreef. Vooral verzonnen getallen (F2) en gemiste getallen (F3) tellen.

## Inputideeën

1. "Ik ben [naam] 21 jaar, ik train al 4 jaar en ik wil sterker worden. Momenteel squat ik 245kg, bench ik 142.5kg en deadlift ik 270kg"
2. "Ik ben [naam], vrouw, 67,5 kg. Mijn beste squat is 120 kg, bench 72,5 kg en deadlift 150 kg."
3. "Hoi, ik weeg 93 kg en m'n total is 585 kg (squat 210, bench 145, deadlift 230). Man, 28."
4. ~~"I'm a 19-year-old female powerlifter, around 60 kg. Squat is 105 kg and deadlift 135 kg, but I haven't tested my bench yet."~~ Vervangen: te gelijk aan voorbeeld 4 in de prompt.
   Nieuw: "I'm a male lifter, weighing 185 lbs. My squat is 405 lbs, bench 275 lbs and deadlift 500 lbs."
7. "Ik ben sterk."
8. "Ik ben een man en kom uit in de -83 kg klasse. Mijn squat is 170 kg, bench 110 kg en deadlift 210 kg."
9. "Ik ben een vrouw van 68 kg. Ik squat 130 kg, bench rond de 100 kg en deadlift 160 kg."
10. "I'm a 79.4 kg male. Squat 190 kg, bench 125 kg, deadlift 230 kg. Total 545 kg."
5. "Ik ben 82 kilo en man. Vorige wedstrijd: squat 180, bench 115, deadlift 215. Dus 510 totaal."
6. "Femme, 74 kg. Mon total est de 390 kg. Je n'ai pas les chiffres séparés pour squat, bench et deadlift."
