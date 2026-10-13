# Logboek

Elke run, elk resultaat, elke wijziging. Wis nooit een fout.

| Datum | Versie | Wat ik deed | Resultaat | Fout of opvallend | Volgende stap |
|---|---|---|---|---|---|
| 2026-10-07 | — | Taak gekozen via brainstorm | `taak.md` met vijf regels en zes inputideeën | | v1 schrijven |
| 2026-10-07 | — | Inputideeën verzameld | Zelf gegenereerd, geen echte berichten | Succespercentage geldt als bovengrens | Echte berichten verzamelen |
| 2026-10-07 | v1 | Prompt v1 geschreven, audit gedaan (bouwsteen 4 ontbrak), vier voorbeelden toegevoegd, testset naar tien | `prompt.md`, `audit.md`, `test-set.md` | Input 4 vervangen: te gelijk aan voorbeeld 4 | Buurtest, Run 1 met inputs 2, 4, 6, 8, 9 |
| 2026-10-13 | v1 | Run 1: inputs 2, 4, 6, 8, 9, elk in een nieuw gesprek (`claude -p` in een lege map, zonder tools) | 5 op 5 juist (n = 5, 1 run) | Geen fouten. Buurtest niet gedaan | Inputs 1, 3, 5, 7, 10 draaien, daarna Run 2 voor alle tien |
| 2026-10-13 | v1 | Run 1 aangevuld: inputs 1, 3, 5, 7, 10, elk in een nieuw gesprek (`claude -p` in een lege map, zonder tools) | 10 op 10 juist (n = 10, 1 run) | Geen fouten | Run 2 voor alle tien |
| 2026-10-13 | v1 | Run 2: alle tien opnieuw, elk in een nieuw gesprek (`claude -p` in een lege map, zonder tools) | 20 op 20 juist (n = 10, 2 runs) | Geen fouten, geen wisselende antwoorden | |
