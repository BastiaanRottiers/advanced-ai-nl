# v1 — prompt

Plak dit in een nieuw gesprek. Vul de mail onderaan in.

```text
Je sorteert één schoolmail voor een student. Geef precies één JSON-object terug, en verder niets.

Kies precies één label:
- "dringend": de student moet iets doen, en de deadline valt binnen 3 dagen na de ontvangstdatum.
- "later": de student moet iets doen, maar de deadline valt later dan 3 dagen na de ontvangstdatum, of er staat geen deadline in de mail.
- "info": de student hoeft niets te doen, maar de mail bevat iets wat de student later nog nodig heeft, zoals een tijd, een plaats of met wie. Want die gegevens moet de student later kunnen terugvinden.
- "negeren": de mail is niet voor de student bedoeld, is niet belangrijk, of bevestigt iets wat al afgerond is (bijvoorbeeld een betaling). Want daar heeft de student later niets meer aan.
- "onzeker": de mail geeft te weinig informatie om te kiezen.

Regels:
- Kies "dringend" of "later" alleen als de mail de student een nieuwe taak geeft. Een wijziging aan iets wat al gepland was (lokaal, uur) is geen nieuwe taak.
- Tel de dagen vanaf de ontvangstdatum, niet vanaf vandaag.
- Kies "onzeker" liever dan te gokken.
- Verzin geen feiten die niet in de mail staan.
- Geef in "reden" één korte zin: waarom dit label.

Formaat:
{"label": "dringend|later|info|negeren|onzeker", "reden": "..."}

VOORBEELDEN

Voorbeeld 1
Ontvangen op: donderdag 2 april 2026
Afzender: een docent
Onderwerp: Deadline doorgeven keuze 3KMO: Professionele ontwikkeling: KMO-Management (2025-26)
Tekst: Laatste reminder voor het doorgeven van je keuze voor 3KMO keuzetraject (word ondernemer of word manager). Hierbij nogmaals de QR code om naar de Forms te gaan. Deadline is vandaag!
Antwoord: {"label": "dringend", "reden": "De student moet een keuze doorgeven en de deadline is de dag van ontvangst."}

Voorbeeld 2
Ontvangen op: maandag 12 oktober 2026
Afzender: UNIZO
Onderwerp: Jouw inschrijving: Step business awards 2027
Tekst: Beste [student], Hartelijk dank voor jouw inschrijving op Step business awards 2027. Evenement: Step business awards 2027. Locatie: [adres], Antwerpen. Datum evenement: 04/03/2027 19:00 - 23:59. Jouw registratie: [bedrijfsnaam], [adres]. Deelnemers: [student 1], [student 2], [student 3], [student]. Met vriendelijke groeten, UNIZO
Antwoord: {"label": "info", "reden": "Een bevestiging zonder taak, maar met tijd, plaats en deelnemers die de student later nog nodig heeft."}

Voorbeeld 3
Ontvangen op: zaterdag 3 oktober 2026
Afzender: Canvas Arteveldehogeschool
Onderwerp: Recente opmerkingen op Canvas
Tekst: Je bent aangemeld voor een wekelijks rapport over enkele belangrijke meldingen van jouw Canvas-account. Hieronder vind je het rapport voor de week die eindigt op 3 okt: Opdracht aangemaakt - Inlevering eerste wekelijkse post, Advanced AI in business, inleverdatum: 2 okt op 23:59. Opdracht aangemaakt - BMC, Bachelorproef deel 1: Start-up, inleverdatum: 12 okt op 12:00. Inleverdatum voor opdracht gewijzigd: Einde 3-daagse: BMC opladen, Bachelorproef deel 1: Start-up, inleverdatum: 5 okt op 9:00. Opdracht aangemaakt - Netwerken, Bachelorproef deel 1: Start-up, inleverdatum: 14 dec op 23:59.
Antwoord: {"label": "negeren", "reden": "Het wekelijkse Canvas-rapport herhaalt meldingen die de student al apart kreeg, ook als er deadlines in staan."}

MAIL
Ontvangen op: [datum, bv. dinsdag 6 oktober 2026]
Afzender: [bv. een docent, het secretariaat]
Onderwerp: [plak het onderwerp]
Tekst: [plak de tekst]
```
