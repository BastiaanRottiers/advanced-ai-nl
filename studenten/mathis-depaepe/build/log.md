# Logboek

Elke run, elk resultaat, elke wijziging. Wis nooit een fout.

| Datum | Versie | Wat ik deed | Resultaat | Fout of opvallend | Volgende stap |
|---|---|---|---|---|---|
| 2026-10-08 | v1 | v1 gemaakt (`prompt.md`) | | | |
| 2026-10-13 | v2 | Full-Set-regel toegevoegd aan `doos_papieren` in `prompt.md` | | Full-Set-regel na fout T04 | T01–T05 opnieuw draaien met v2 |
| 2026-10-13 | v2 | Buurtest met T06, T08 en T10 | 2 van 3 gelijk | T08 doos_papieren: buur zei "geen" (las "Ohne Box" als geen), testset zegt "enkel papieren". "geen" stond niet uitgelegd in de prompt. | Uitleg van "geen" toegevoegd aan `prompt.md` |
| 2026-10-13 | v2 | Uitleg van "full set", "enkel doos", "enkel papieren", "geen" en "onbekend" in `prompt.md` | | Na de buurtest: de waarden van `doos_papieren` stonden niet uitgelegd. Nog steeds v2: alle wijzigingen van vandaag, voor Run 1 van T06–T10. | Run 1 |
| 2026-10-13 | v2 | Run 1 van T06–T10, fouten geclassificeerd | 44 op 50 velden juist (n = 5, 1 run) | 5 × F1 (T06 bouwjaar, T08 referentienummer, T09 vraagprijs, T10 merk, T10 verkoper), 1 × F3 (T07 doos_papieren). T10 verkoper komt door de prompt: geen optie "onbekend". | Eén wijziging aan de context |
| 2026-10-13 | v3 | Uitweg-regel toegevoegd onder "Regels" in `prompt.md` (bouwsteen 5, met een want). v2 bewaard in `prompt-v2.md` | | | T06, T08 en T09 opnieuw draaien met v3 |
| 2026-10-13 | v3 | T06, T08 en T09 opnieuw gedraaid met v3, elk in een nieuw gesprek | Van 27/30 naar 28/30 velden juist (n = 3, 1 run) | T08 referentienummer en T09 vraagprijs nu juist. T06 bouwjaar blijft fout (F1). Nieuwe fout: T08 doos_papieren "enkel doos" (F1). De nieuwe regel gaat niet over doos of papieren, dus dit is waarschijnlijk variatie, geen gevolg van de wijziging. In Run 1 was dit veld juist. | Post week 3 |
| 2026-10-20 | v3 | Reden en verwachting voor v4, opgeschreven vóór de wijziging. Reden: fout T10 verkoper (F1, Run 1 v2). Bij `verkoper` staat in de prompt alleen "particulier" of "handelaar", dus het model kan geen "onbekend" kiezen. Verwachting: T10 verkoper wordt "onbekend". Bij T01–T09 blijft verkoper hetzelfde, want daar staat de verkoper er telkens in. | | | `verkoper` in `prompt.md` aanpassen |
| 2026-10-20 | v4 | "onbekend" toegevoegd als derde optie bij `verkoper` in `prompt.md`. Alleen die regel gewijzigd. v3 bewaard in `prompt-v3.md` | | | T10 opnieuw draaien met v4 |
