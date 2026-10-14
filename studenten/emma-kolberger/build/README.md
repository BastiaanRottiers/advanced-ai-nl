# AI Lead Intake Checker

## De taak

De tool controleert een nieuwe lead voor een AI-automationbedrijf en geeft precies één status.

De input bevat naam, e-mailadres en bericht of automatisatievraag. Bedrijf is optioneel.

## De statussen

| Status | Betekent |
|---|---|
| `READY` | Naam, bruikbaar e-mailadres en een duidelijke automatisatievraag zijn aanwezig |
| `NEEDS_INFO` | Er is een bruikbaar e-mailadres, maar naam of duidelijke automatisatievraag ontbreekt |
| `INVALID` | Er is geen bruikbaar e-mailadres, de input is leeg of het is duidelijk spam/testdata |

`INVALID` heeft voorrang op de andere statussen, want zonder een bruikbaar e-mailadres kan de lead niet betrouwbaar worden opgevolgd. De tool controleert alleen de schrijfwijze van het e-mailadres, niet of de mailbox bestaat of bereikbaar is.

## Waarom `NEEDS_INFO`?

Als de automatisatievraag te onduidelijk is om betrouwbaar te beoordelen, kiest de tool `NEEDS_INFO` en vermeldt wat verduidelijkt moet worden. De voorrang van `INVALID` blijft gelden. De tool gebruikt alleen informatie uit de input en verzint niets.

## De uitvoer

Precies drie regels:

```text
Status: READY | NEEDS_INFO | INVALID
Ontbrekende informatie: <wat ontbreekt of onbruikbaar is; of “Geen”>
Korte reden: <één korte zin op basis van de input>
```

Bij Status kiest de tool één waarde. Een ontbrekend bedrijf telt niet als ontbrekende informatie.

## Zo draai je het

1. Open een nieuw gesprek met je AI.
2. Plak de prompt uit `prompt.md`.
3. Vul onderaan één lead in tussen `<lead>` en `</lead>`.
4. Lees de status, ontbrekende informatie en korte reden.
5. Noteer de run en het resultaat in `log.md`.

## Versies

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | | Eerste prompt met drie statussen, drie voorbeelden en een uitweg bij onduidelijkheid | Leads beoordelen met alleen de informatie uit de input |
