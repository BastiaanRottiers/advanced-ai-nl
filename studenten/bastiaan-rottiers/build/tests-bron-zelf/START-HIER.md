# Vijf brontests zelf uitvoeren

## Wat je gebruikt

- Bron voor de oorspronkelijke tests: [Wentronic/LAPP-catalogus 2025 — originele pdf downloaden](https://www.wentronic.com/assets/content/downloads/catalogs/WENTRONIC-LAPP-e-Mobility-Katalog-2025_EN-4YCpBFh.pdf). De pdf blijft ook lokaal beschikbaar, maar wordt niet in Git opgenomen. De [tekstextractie](../bronnen/wentronic-lapp-emobility-2025.md) staat wel in de repo. De plakteksten hieronder behouden de pdf-instructies die tijdens de tests gebruikt zijn; de tekstvariant is niet opnieuw getest.
- Vijf plakteksten, elk met de actieve prompt v8 en precies één vraag:
  - [B01](B01.md)
  - [B02](B02.md)
  - [B03](B03.md)
  - [B04](B04.md)
  - [B05](B05.md)
- [Testset met vooraf vastgelegde verwachte antwoorden](../test-set-bron.md). Dit bestand gebruik je zelf bij het nakijken; geef het niet mee aan de AI.

## Per test

1. Open een volledig nieuw gesprek, telkens in dezelfde AI met hetzelfde model. Gebruik zo mogelijk tijdelijke gesprekken zonder geheugen of eerdere WATTZAK-projectcontext.
2. Voeg de volledige pdf toe.
3. Open de plaktekst van de test, kopieer de volledige inhoud en verstuur die in het nieuwe gesprek. De instructies zitten er al in; je hoeft geen andere prompt bij te voegen.
4. Bewaar het eerste antwoord inclusief de bronverwijzingen. Vraag geen verbetering of tweede poging binnen deze run.
5. Zet het volledige antwoord en de gebruikte bronplaats in de kolom `Run 1` van het betreffende geval, of plak ze hier zodat de agent ze kan overnemen.
6. Herhaal in een nieuw gesprek voor het volgende geval. Stuur nooit de andere vragen of de verwachte antwoorden mee.

## Zelf nakijken

Vergelijk na de vijf gesprekken de antwoorden met de vooraf vastgelegde antwoorden en het document. Vul zelf `Juist?` in en tel de score op vijf. Noteer datum, AI en model bij het resultaat. De agent kijkt de antwoorden niet voor je na.

## Eerdere automatische uitvoering

Vóór de overstap naar handmatig testen waren vijf automatische Codex CLI-sessies al afgerond. Deze gebruikten automatisch uitgelezen pdf-tekst. Hun resultaten zijn niet in `Run 1` overgenomen en zijn niet beoordeeld. De technische logbestanden staan lokaal in `build/week-06-lokaal/`. De handmatige gesprekken met de originele pdf vormen de hier uit te voeren reeks; meng de resultaten niet.
