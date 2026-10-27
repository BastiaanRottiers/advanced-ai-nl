# Week 5: stand van zaken

**Aanvulling na controle van de uitgebreidere Canvas-opdracht:** set v2 met T01–T20 en vooraf vastgelegde antwoorden is eenmaal uitgevoerd met v7, GPT-6.1 Sol medium. Alle twintig hebben één geldige output; T17 is na een tijdelijke capaciteitsfout opnieuw geprobeerd. Resultaat: **10 op 20 (set v2, 1 run; n = 20)**. De correcties van de oude antwoorden bij T08 en T11 staan openlijk in `build/log.md`. De post heeft zes koppen, de score en Bastiaans reflectie op T19. Het lokale dashboard bevat de nieuwe score, maar de eerder gepubliceerde versie is nog niet bijgewerkt. De laatste lokale wijzigingen staan nog niet in pull request #122.

## Klaar

- Week 4 ingediend via pull request #121; automatische check geslaagd.
- Lesmateriaal opgehaald en branch week-05 gemaakt.
- Bestaande week-4-prompt, testset en kosten behouden.
- Foutmargetest: 30 afzonderlijke antwoorden, Sol medium, T06–T10, drie rondes per versie. v6 is gereconstrueerd; de beperking staat bij de scores.
- Eigen controle van T07 en T10 genoteerd; daarna is alleen het aantoonbaar foutieve T08-antwoord openlijk gecorrigeerd en gelogd.
- Modeltest: vijftien nieuwe antwoorden; Sol 4/5, Luna 2/5, Astra 4/5. Gok vooraf vastgelegd. Eigen keuze achteraf: Sol medium.
- Nieuwe tokenmeting en API-equivalente kosten, met behoud van de oude raming. Haiku-correctie niet van toepassing.
- Waardeketen met herstelduur, scorebereik en gevoeligheid voor de handwerktijd. €20 eigen tijdwaarde en een apart hypothetisch werkgeversscenario van €30.
- Gepubliceerde dashboardversie a7aa901 is eerder zonder login opgehaald (HTTP 200) en kwam toen overeen met het lokale bestand. De nieuwe set-v2-score staat nu in het lokale dashboard; de gepubliceerde versie en link in de post lopen daar nog op achter.
- Post bijgewerkt: zes koppen, vijf letterlijke citaten met feitelijke herschrijvingen en een reflectie op T19; 474 woorden exclusief citaten.
- Tijdschattingen per stap verwerkt: lezen 5–10 min, begrijpen/zoeken 20–25 min, plannen minstens 5 min; met 5 min plannen is de rekenmiddenwaarde 35 min. De tooltijd vóór herstel is nu 5 min verwerken + 3 min nakijken = 8 min.
- Publieke dashboardlink zelf in een privévenster geopend: na de tussenpagina opent het dashboard zonder inloggen.

## Indiening

- Week 5 is ingediend via [pull request #122: week-05 — Bastiaan Rottiers](https://github.com/alexandernacho/advanced-ai-nl/pull/122).
- De automatische controle is te volgen op het tabblad Checks van de pull request. De docent beoordeelt en merget de indiening.

## Meetbeperkingen voor de verdere Build

- T08 heeft een tegenstrijdigheid tussen input en verwacht antwoord. Alleen vóór een volgende reeks corrigeren en vastleggen; oude runs niet herlabelen.
- De tijden per werkstap zijn nu geschat, maar nog niet met een chronometer gemeten. De werkelijke herstelduur is nog niet gemeten.
- De huidige meting bevestigt geen prestaties op nieuwe taken rond financieel plan en marktonderzoek. Daarvoor zijn nieuwe eigen praktijkinputs en vooraf vastgelegde antwoorden nodig.
- Voor de eventuele blinde klasgenotencontrole is nog geen resultaat beschikbaar.
