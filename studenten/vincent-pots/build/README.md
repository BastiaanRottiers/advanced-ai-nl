# Opdrachten en deadlines uit een vakpagina

## De taak

De tool haalt uit de gekopieerde tekst van één vakpagina (Canvas) alle opdrachten met hun deadline.

## De uitvoer

Een lijst, één regel per opdracht:

```
- <opdracht> — <deadline>
```

Bijzondere antwoorden:

| Situatie | Antwoord |
|---|---|
| Geen datum bij een opdracht | `geen duidelijke deadline — zelf controleren` |
| Geen opdrachten op de pagina | `geen opdrachten gevonden` |
| Datum zonder jaar of in woorden | de woorden letterlijk overnemen, geen datum gokken |

## Waarom deze uitweg?

Een model zonder uitweg gokt. Een verkeerde datum betekent dat de student een deadline mist en daardoor 0 punten krijgt. Daarom zegt de tool liever "zelf controleren" dan dat hij een datum verzint.

## Hoe check ik of een antwoord juist is?

Ik leg de lijst naast de echte vakpagina en controleer per opdracht: klopt de naam, klopt de datum.

## Zo draai je het

1. Open een nieuw gesprek met je AI, zonder web search.
2. Plak de prompt uit `prompt.md`. Vervang de vakpagina onderaan door de tekst van één vakpagina uit `inputs/`.
3. Vergelijk het antwoord met `test-set.md`.
4. Doe elke input twee keer, telkens in een nieuw gesprek.
5. Schrijf het resultaat in `log.md`.

## Versies

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | week 2 | Eerste prompt met regels, uitwegen en formaat | Eerste werkende versie |
| v2 | 2026-10-13 | Voorbeeld toegevoegd, rol en doel aangevuld, datumregel en lesmateriaalregel met een want | Audit met de zes bouwstenen: voorbeeld ontbrak, rol en doel was dun |
