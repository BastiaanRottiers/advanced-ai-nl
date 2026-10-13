# Fysieke toestand van een wielrenner

## De taak

De tool leest twee tot vier gedateerde nieuwsberichten, interviews of quotes over één wielrenner en geeft precies één label voor de fysieke toestand van die renner nu, met één zin als reden.

## De labels

| Label | Betekent |
|---|---|
| `uitgeschakeld` | De renner kan op dit moment niet fietsen of koersen door een blessure, ziekte of operatie |
| `in herstel` | De renner had een blessure of ziekte en traint opnieuw, maar rijdt nog geen wedstrijden |
| `vermoeid` | De renner koerst, maar de berichten wijzen op vermoeidheid of minder vorm, bijvoorbeeld na een zware ronde |
| `goed` | De renner koerst en de berichten wijzen op goede vorm, zonder blessure of vermoeidheid |
| `geen info` | De berichten zeggen niets over de fysieke toestand, of ze spreken elkaar tegen zonder duidelijke winnaar |

## Waarom `geen info`?

Een fout label kan tot een verkeerde voorspelling leiden. `geen info` zegt eerlijk dat er meer informatie nodig is. Daarom kiest de tool liever `geen info` dan te gokken.

## De uitvoer

Eén JSON-object:

```
{"label": "in herstel", "reden": "Het recentste bericht zegt dat hij opnieuw traint maar nog geen wedstrijden rijdt."}
```

Het label is juist of fout. Een klasgenoot met dezelfde labeldefinities moet los van mij op hetzelfde label uitkomen.

## Zo draai je het

1. Open een nieuw gesprek met je AI.
2. Plak de prompt uit `prompt.md`. Vul de datum van vandaag, de renner en de berichten in. Eén bundel per gesprek.
3. Lees het label. Vergelijk met `test-set.md`.
4. Doe elke bundel twee keer, telkens in een nieuw gesprek.
5. Schrijf het resultaat in `log.md`.

## Versies

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | 30 september 2026 | Eerste prompt met vijf labels en zes regels | |
| v2 | 7 oktober 2026 | Rol en doel, een "want" bij elke regel en vier verzonnen voorbeelden toegevoegd | De audit toonde dat voorbeelden ontbraken en mijn tool was bij T04 te voorzichtig |
| v3 | 13 oktober 2026 | Regel over tegenstrijdige signalen toegevoegd | T06 was twee keer fout (F1) door de uitbreiding van het label `goed` in v2 |
