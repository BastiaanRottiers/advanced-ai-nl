# Taak: van notities plaatsbezoek naar stuklijst

1. **Taak:** de getypte notities van een plaatsbezoek omzetten naar een stuklijst met hoeveelheden voor een airco- of warmtepompinstallatie.
2. **Wat erin gaat:** de notities die mijn broer tijdens het plaatsbezoek in zijn gsm typt (geanonimiseerd, zonder prijzen).
3. **Wat eruit komt:** een vaste lijst met per onderdeel een hoeveelheid: koelleiding per binnenunit en totaal (m), communicatiekabel (m), voedingskabel (m), aansluitpunt voeding (zekeringkast of stopcontact), elektriciteitsbuis (m), kabelgoot (stuks), condensafvoer (lengte in m en type), bochten en tussenstukken (per soort). Hergebruikte leidingen komen er niet op. Staat iets niet in de notities en volgt het niet uit een vaste regel van mijn broer, dan staat er `onbekend, na te vragen`.
4. **Soort AI:** een taalmodel, want de input is vrije tekst die naar vaste velden moet. Prijzen opzoeken en werkuren berekenen doen het niet: dat zijn vaste gegevens voor een database met dropdowns, daar is geen AI voor nodig.
5. **Juist of fout:** de stuklijst die mijn broer echt gebruikte voor diezelfde opdracht. Per onderdeel vergelijk ik of de hoeveelheid klopt.

## Vijf inputideeën

1. Eenvoudige split: één binnenunit in de slaapkamer, buitenunit vlak achter de muur.
2. Grote multisplit: vijf binnenunits verdeeld over twee buitenunits.
3. Vervanging van een oude airco, waarbij een deel van de bestaande leidingen hergebruikt wordt.
4. Lange route: leidingen via de zolder of langs meerdere gevels met veel kabelgoot en bochten.
5. Heel korte notitie waar de afstand of de plaats van de buitenunit ontbreekt.
