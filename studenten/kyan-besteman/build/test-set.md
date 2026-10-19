# Testset

Prompt: `prompt-v1.md` (kolommen Run 1 en Run 2) en `prompt-v2.md` (kolommen v2 Run 1 en v2 Run 2). Inputs zelf geschreven (geen echte klantenreacties), dus het succespercentage is een bovengrens.

T05: juiste antwoord aangepast vóór de v2-runs, van `andere` naar `geen geldig vervoersbewijs` (label nieuw in v2). De v1-runs zijn gemeten tegen het oude antwoord `andere`.

| ID | Input | Juiste antwoord | Waarom | Run 1 | Run 2 | v2 Run 1 | v2 Run 2 |
|---|---|---|---|---|---|---|---|
| T01 | Ik heb een ticket op mijn gsm gekocht voor het opstappen, maar tijdens dat de treinbegeleider langs kwam is de batterij van mijn gsm plat gegaan | online ticket niet getoond | Omdat de gsm plat was kan hij deze niet tonen dus de treinbegeleider kan er niet van uit gaan of hij een geldig vervoersbewijs heeft. | online ticket niet getoond | online ticket niet getoond | online ticket niet getoond | online ticket niet getoond |
| T02 | Ik ben mijn abonnement thuis vergeten toen ik op de trein zat opweg naar het werk, later zag ik in mijn agenda dat deze vandaag vervallen is. Ik ben meteen naar huis vertokken en heb deze opnieuw gevalideerd de dag dat hij vervallen was. Kan deze boete misschien geannuleerd worden? | abonnement vergeten (datum rit: niet vermeld) | De klant heeft zijn abonnement de dag zelf nog opnieuw gevalideerd waardoor deze dus geldig is. Datum rit: "vandaag" gaat over het vervallen, niet over de rit. | onzeker | onzeker | abonnement vergeten, maar datum rit: vandaag (F6) | abonnement vergeten (datum rit: niet vermeld) |
| T03 | Tijdens mijn treinrit had ik een online ticket gekocht, toen de treinbegeleider langskwam zei hij dat ik in de verkeerde klassen zat. | andere | Dit is een klassenverhoging waardoor hij een verschil van prijs zal moeten betalen. | andere | andere | andere, maar abonnement: niet vermeld i.p.v. nee | andere |
| T04 | Ik heb boete gekregen, ik heb ticket in trein gekocht | ticket te laat gekocht | De ticket is na het instappen gekocht wat niet mag. | onzeker | onzeker | onzeker | onzeker |
| T05 | Ik had geen ticket op de trein, mag ik tarief aan boord betalen, want dit werd niet aan mij gevraagd? | geen geldig vervoersbewijs | De klant heeft geen bewijs van een ticket voor de treinrit. Dit betekent dat er geen ticket is. | andere | andere | | |
