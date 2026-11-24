# Canvas-assistent voor WATTZAK

## De taak

De tool maakt van één Canvas-opdracht, bijhorende documenten, beoordelingscriteria en lesnotities een voorbereidingskaart voor de bachelorproefgroep achter WATTZAK.

## De uitvoer

De voorbereidingskaart bevat wat de groep moet opleveren, concrete stappen in een logische volgorde, deadline, inleverwijze, beoordelingscriteria en een agenda-voorstel. Alleen datums die in de bronnen staan worden vermeld; ontbrekende of dubbelzinnige informatie krijgt het label `onzeker`.

## Zo test ik

1. Open een nieuw gesprek met een AI.
2. Plak `prompt.md` en vul één Canvas-opdracht in.
3. Vergelijk elk veld met het vooraf bepaalde juiste antwoord in `test-set.md`.
4. Noteer de run en eventuele fout in `log.md`.

## Bronvragen testen (week 6)

De actieve prompt is v8 in `prompt.md`, met een aanpassing voor het bronformaat bij indiening. De geteste pdf-instructies blijven bewaard als `prompt-v8.md`. Voor product- en prijsvragen leest de tool de [tekstextractie van de Wentronic/LAPP-catalogus](bronnen/wentronic-lapp-emobility-2025.md) of de oorspronkelijke pdf via de downloadlink in die tekstbron, en noemt hij bij elk antwoord de bronplaats. De catalogus bevat historische gegevens uit 2025. De brontests zijn uitgevoerd met de pdf; de tekstversie is daarna toegevoegd omdat GitHub binaire documenten weigert. Die tekstvariant is niet opnieuw getest.

1. Bastiaan schrijft vooraf B01–B05 in `test-set-bron.md`, inclusief verwachte antwoorden en vindplaats. B01–B04 zijn beantwoordbaar; B05 niet.
2. Voer daarna elk geval in een afzonderlijke nieuwe sessie uit met alleen de actieve prompt, de volledige pdf en de vraag van dat geval. Stuur verwachte antwoorden, vindplaatsen en andere testgevallen niet mee.
3. Noteer per geval uitsluitend het toolantwoord en de gebruikte bronplaats in `Run 1`. Noteer het gebruikte model bij het resultaat. Beoordeel de antwoorden niet als agent.
4. Bastiaan vult zelf `Juist?` in en bepaalt de score op vijf.

De eerdere v7-prompt en de week-5-testset blijven bewaard; de brongevallen staan apart.

## Versiegeschiedenis

| Versie | Datum | Wat veranderde | Waarom |
|---|---|---|---|
| v1 | 2026-10-07 | Eerste prompt opgesteld | Eerste testbare context |
| v2 | 2026-10-09 | Verbod op niet-onderbouwde informatie toegevoegd | T01 verzon prototype- en gadgetdetails (F2) |
| v3 | 2026-10-09 | Expliciete voorwaarden onder beoordelingscriteria toegevoegd | T06 miste een expliciet criterium |
| v4 | 2026-10-09 | Korte vergelijkingsvorm voor documenten toegevoegd | T09 was te lang en niet per onderdeel bruikbaar (F4) |
| v5 | 2026-10-09 | Vergelijkingsvorm beperkt tot expliciete documentvergelijkingen | De korte vorm mag gewone Canvas-opdrachten niet veranderen |
| v6 | 2026-10-20 | Regels voor aantallen, deadline, inleverwijze en status toegevoegd | T06–T08 hadden fouten rond die vier onderdelen |
| v7 | 2026-10-20 | Statusregel voor voortgangsvergelijkingen verduidelijkt | T10 had duidelijke vervolgstappen maar gaf ten onrechte `onzeker` |
| v8 | 2026-11-18 | Documentbron, directe bronantwoorden, vindplaatsen en melding bij ontbrekende informatie | Product- en prijsvragen voor WATTZAK controleerbaar beantwoorden; oorspronkelijke brontest 4/5 na eigen herbeoordeling, B02-herhaling apart als juist beoordeeld |
