# Schoolmail-sorteerder

## De taak

De tool geeft één schoolmail precies één label, volgens wat ik ermee moet doen.

## De labels

| Label | Betekent |
|---|---|
| `dringend` | Ik moet iets doen, en de deadline valt binnen 3 dagen na ontvangst |
| `later` | Ik moet iets doen, maar de deadline valt later, of er staat geen deadline in |
| `info` | Ik hoef niets te doen, maar er staat iets in wat ik later nog nodig heb: een tijd, een plaats, met wie |
| `negeren` | Niet voor mij, niet belangrijk, of een bevestiging van iets wat al afgerond is |
| `onzeker` | De mail geeft te weinig informatie om te kiezen |

## Waarom `onzeker`?

Een model zonder uitweg gokt. Het kiest dan toch een label, en het klinkt zeker. Met `onzeker` mag het zeggen: dit weet ik niet. Dan kijk ik zelf.

## De uitvoer

Eén regel JSON:

```
{"label": "dringend", "reden": "Keuze doorgeven, deadline vandaag."}
```

Het label is juist of fout. Twee mensen kunnen dat los van elkaar beslissen. Daarom is het meetbaar.

## Zo draai je het

1. Open een nieuw gesprek met je AI, zonder web search en zonder geheugen (incognito of tijdelijk gesprek).
2. Plak de prompt uit `prompt.md`. Vul één mail in.
3. Lees het label. Vergelijk met `test-set.md`.
4. Doe elke mail twee keer, telkens in een nieuw gesprek.
5. Schrijf het resultaat in `log.md`.

## Versies

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | 2026-10-06 | Eerste prompt met vijf labels | Start |
| v2 | 2026-10-13 | `info` en `negeren` met een want, drie voorbeelden | Het model koos `info` voor een betalingsbevestiging, want de prompt kende het verschil niet |
