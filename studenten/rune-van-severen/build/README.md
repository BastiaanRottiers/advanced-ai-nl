# Krachtgegevens uit een bericht

## De taak

De tool haalt uit een vrij bericht van een powerlifter de gegevens die nodig zijn om de kracht te bepalen. Het model rekent niets uit. GL-points en niveau komen later uit een vaste formule.

## De velden

| Veld | Eenheid |
|---|---|
| `geslacht` | man / vrouw |
| `lichaamsgewicht` | kg |
| `squat` | kg |
| `bench` | kg |
| `deadlift` | kg |
| `total` | kg |

## Waarom `niet vermeld`?

Een model zonder uitweg gokt. Het vult dan toch een getal in, en dat klinkt even zeker als een juist getal. Met `niet vermeld` mag het zeggen: dit staat er niet in.

## De uitvoer

Eén regel JSON, prompt in `prompt.md`:

```
{"geslacht": "vrouw", "lichaamsgewicht": "74 kg", "squat": "niet vermeld", "bench": "niet vermeld", "deadlift": "niet vermeld", "total": "390 kg"}
```

Elk veld is juist of fout. Twee mensen kunnen dat los van elkaar beslissen. Daarom is het meetbaar.

## Zo draai je het

1. Open een nieuw gesprek met je AI, zonder web search, niet in deze map.
2. Plak de prompt. Vul één bericht in.
3. Lees de velden. Vergelijk met `test-set.md`.
4. Doe elk bericht twee keer, telkens in een nieuw gesprek.
5. Schrijf het resultaat in `log.md`.

## Versies

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | 2026-10-07 | Eerste prompt met zes velden en `niet vermeld` | |
