# Horlogeadvertenties uitlezen

## De taak

De tool haalt uit één advertentie van een tweedehands luxehorloge tien vaste velden. Details: `taak.md`.

## De uitvoer

Eén JSON-object met `merk`, `model`, `referentienummer`, `bouwjaar`, `staat`, `doos_papieren`, `vraagprijs`, `munt`, `verkoper`, `servicegeschiedenis`. Staat iets er niet in: `"onbekend"`.

## Zo draai je het

App: ChatGPT, gratis versie. Model: het standaardmodel van de gratis versie. De exacte modelversie is niet zichtbaar in de app en werd niet genoteerd. Bij de gratis versie kan ChatGPT ook overschakelen naar een kleiner model als de limiet bereikt is, dus niet elke run is zeker met hetzelfde model gedraaid.

1. Open een nieuw gesprek met je AI.
2. Plak de prompt uit `prompt.md`. Vul één advertentie in.
3. Vergelijk elk veld met `test-set.md`.
4. Doe elke advertentie twee keer, telkens in een nieuw gesprek.
5. Schrijf het resultaat in `log.md`.

## Versies

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | 2026-10-08 | Eerste prompt | |
| v2 | 2026-10-13 | Full-Set-regel bij `doos_papieren`, uitleg van alle vijf waarden van `doos_papieren` | Full-Set-regel na fout T04; uitleg van de waarden na de buurtest |
| v3 | 2026-10-13 | Uitweg-regel: twee waarden voor één veld, of een waarde die iets anders kan betekenen → "onbekend", met een want. v2 bewaard in `prompt-v2.md` | Fouten T06, T08, T09 in Run 1 (F1) |
| v4 | 2026-10-20 | "onbekend" als derde optie bij `verkoper`. v3 bewaard in `prompt-v3.md` | Fout T10 verkoper in Run 1 (F1): de prompt liet geen "onbekend" toe |
