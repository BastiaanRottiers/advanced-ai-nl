# AI Lead Intake Checker

Een AI Lead Intake Checker voor een AI-automationbedrijf.

## Input

Een nieuwe lead met:
- Naam
- E-mailadres
- Bedrijf, optioneel
- Bericht of automatisatievraag

## Statussen

De tool geeft één van drie statussen:
- READY = naam, geldig e-mailadres en een duidelijke vraag zijn aanwezig.
- NEEDS_INFO = de lead is bereikbaar via e-mail, maar naam of duidelijke vraag ontbreekt.
- INVALID = er is geen bruikbaar e-mailadres, de input is leeg of het is duidelijk spam/testdata.

## Output

- Status
- Ontbrekende informatie
- Korte reden

## Regel

Gebruik alleen de informatie uit de input en verzin niets.
