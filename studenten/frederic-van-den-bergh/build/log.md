# Logboek

Elke run, elk resultaat, elke wijziging. Wis nooit een fout.

| Datum | Versie | Wat ik deed | Resultaat | Fout of opvallend | Volgende stap |
|---|---|---|---|---|---|
| 2026-10-09 | v1 | v1 gemaakt (`prompt.md`, uit week 2) | | | Audit van de prompt (bouwstenen 1 tot 6) |
| 2026-10-09 | v1 | Audit gedaan: bouwsteen 4 (voorbeelden) ontbrak, vijf voorbeelden zelf geschreven. `Reden` overal één zin gemaakt (Regels en Uitvoer botsten). "Want" toegevoegd aan de veiligheidsregel. | Alle zes bouwstenen aanwezig | Regels en Uitvoer spraken elkaar tegen over `Reden` | Testset naar tien inputs |
| 2026-10-09 | v1 | Buurtest: buur las alleen `prompt.md`, kreeg T05, T06 en T10. Gelijk met mijn antwoord op dringendheid: 1 van 3 (alleen T06). T05 en T10: buur koos "direct stilleggen". | 1 op 3 gelijk | Prompt legde het verschil tussen "direct stilleggen" en "direct terugkeren naar depot" niet uit | Definitie van beide labels met een want in `prompt.md` gezet (v1 aangepast). T05 in testset aangepast naar onzeker, T10 blijft onzeker. Nu: Run 1 |
