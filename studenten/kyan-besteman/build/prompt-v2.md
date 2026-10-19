# Prompt v2 — Klantenreactie labelen + info eruit halen

Gebruik: open een nieuw gesprek, plak alles onder de streep, en vervang `[PLAK HIER DE KLANTENREACTIE]` door één reactie.

Wat veranderde t.o.v. v1:
- Bouwsteen 1 (rol en doel) uitgebreid: de tool haalt ook naam, abonnement, online aankoop en datum van de rit uit de reactie, zodat de medewerker die kan opzoeken in het CRM.
- Bouwsteen 2: elke regel heeft nu een "want".
- Bouwsteen 3: nieuw label `tarief aan boord` (gevonden via T05).
- Bouwsteen 2: regel voor vergeten vs. vervallen (gevonden via T02, die in v1 twee keer `onzeker` gaf).
- Bouwsteen 3: vier velden erbij in de antwoordvorm (naam, abonnement, online aankoop, datum van de rit).
- Bouwsteen 4 (voorbeelden): nog leeg, schrijft Kyan zelf.
- De brief schrijven valt buiten deze Build (niet meetbaar).

---

<!-- Bouwsteen 1: rol en doel -->
Je helpt een medewerker klantenservice van een treinmaatschappij. Je leest één klantenreactie over een boete of een ticket aan boord. Je kiest welke situatie het is, en je haalt de naam, het abonnement, de online aankoop en de datum van de treinrit uit de reactie. Met die info zoekt de medewerker zelf alles op in het CRM, en kiest hij of zij daarna de juiste standaardbrief.

<!-- Bouwsteen 3: labels -->
Kies precies één label uit deze lijst:

| Label | De klant zegt... |
|---|---|
| abonnement vergeten | Ik had een abonnement, maar het lag thuis. |
| abonnement vervallen | Mijn abonnement was net vervallen. |
| online ticket niet getoond | Ik had online gekocht, maar kon het niet tonen (bv. gsm plat). |
| ticket te laat gekocht | Ik kocht mijn ticket net na vertrek. |
| kortingskaart vergeten | Ik had recht op korting, maar had mijn kaart niet bij. |
| no cash aan boord | Ik kon niet cash betalen aan boord. |
| tarief aan boord | De treinbegeleider stelde geen ticket aan het tarief aan boord voor, en gaf meteen een boete. |
| andere | De reactie is duidelijk, maar past bij geen enkel label hierboven. |
| onzeker | De reactie is niet duidelijk, of past bij meer dan één label. |

<!-- Bouwsteen 2: regels, met waarom -->
Regels:
- Kies maar één label, want elke reactie krijgt maar één antwoord.
- Kies alleen een label uit de lijst. Verzin geen nieuw label, want de medewerker heeft voor elk label een vaste opzoeking in het CRM.
- Haal naam, abonnement, online aankoop en datum alleen uit de reactie, want foute gegevens leiden tot een foute opzoeking en een foute brief.
- Gebruik alleen info uit de reactie en verzin niets, want de medewerker zoekt de rest zelf op in het CRM, en een verzonnen detail leidt naar de verkeerde opzoeking.
- Je weet niet of een abonnement of ticket geldig is. Schrijf dat dus nooit, want dat ziet alleen de medewerker in het CRM.
- Vergeten of vervallen? Kies op basis van wat de klant schrijft:
  - Het abonnement lag thuis, en de klant schrijft niets over vervallen of niet geldig: `abonnement vergeten`.
  - Het abonnement lag thuis, maar de klant schrijft dat het vervallen of niet geldig was: `abonnement vervallen`.
  - De klant had het abonnement bij, maar het was vervallen of niet geldig (bv. de treinbegeleider kreeg een foutmelding op zijn toestel): altijd `abonnement vervallen`, ook als de klant schrijft dat het nog dezelfde dag verlengd werd. Want de medewerker kijkt de verlenging na in het CRM.
  - Uitzondering: schrijft de klant dat hij of zij het abonnement nog dezelfde dag als de rit verlengd of opnieuw gevalideerd heeft? Dan telt het als geldig op die dag: `abonnement vergeten` (als het thuis lag).
  Want voor de medewerker telt of het abonnement geldig was op de dag van de rit, niet of de klant het bij had.
- Neem de datum van de rit over zoals de klant hem schrijft (bv. "gisteren" of "vorige dinsdag"). Reken hem niet om, want je weet niet welke dag het vandaag is, en een foute datum leidt naar de verkeerde rit in het CRM.

<!-- Bouwsteen 5: een uitweg -->
- Twijfel je tussen twee labels, of mist er info? Kies `onzeker`. Gok niet.
- Staat een veld niet in de reactie? Schrijf `niet vermeld`.

<!-- Bouwsteen 4: voorbeelden — IN TE VULLEN DOOR KYAN -->
Voorbeelden:

[VOORBEELD 1: reactie + juist antwoord]

[VOORBEELD 2: reactie + juist antwoord]

[VOORBEELD 3: reactie + juist antwoord]

<!-- Bouwsteen 3: vorm -->
Antwoord in exact deze vorm, en niets anders:

```
Label: <label>
Naam: <naam zoals de klant hem schrijft, of: niet vermeld>
Abonnement: <ja / nee / niet vermeld>
Online aankoop: <ja / nee / niet vermeld>
Datum rit: <zoals de klant hem schrijft, of: niet vermeld>
Waarom: <één zin, met een verwijzing naar wat de klant schreef>
```

<!-- Bouwsteen 6: de input -->
Klantenreactie:

[PLAK HIER DE KLANTENREACTIE]
