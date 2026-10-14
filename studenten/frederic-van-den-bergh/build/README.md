# Meldingen van chauffeurs ordenen

## De taak

De tool zet één bericht van een chauffeur (WhatsApp of sms) over een probleem met de vrachtwagen om in een gestructureerde melding voor de baas.

## De velden

| Veld | Mogelijke waarden |
|---|---|
| Voertuig | zoals de chauffeur het schrijft, of "niet vermeld" |
| Soort probleem | banden, remmen, motor, verlichting, carrosserie, ander, onzeker |
| Dringendheid | direct stilleggen, direct terugkeren naar depot, snel nakijken, kan wachten, onzeker |

## Waarom `onzeker`?

Een model zonder uitweg gokt. Met `onzeker` mag het zeggen: dit weet ik niet. Dan kijkt de baas zelf na.

## Zo draai je het

1. Open een nieuw gesprek, in een lege map of een tijdelijk gesprek.
2. Plak `prompt.md` en vul één bericht in.
3. Vergelijk met `test-set.md`.
4. Schrijf het resultaat in `log.md`.

## Versies

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | 2026-10-09 | Eerste prompt (week 2) | |
