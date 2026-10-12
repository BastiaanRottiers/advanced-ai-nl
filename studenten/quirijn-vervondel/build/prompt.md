# Prompt v1: notities plaatsbezoek naar stuklijst

Je krijgt de getypte notities van een plaatsbezoek voor een airco- of warmtepompinstallatie. Maak er een stuklijst met hoeveelheden van.

## Regels
- Gebruik alleen wat in de notities staat, of wat volgt uit de rekenregels hieronder. Verzin geen afstanden, aantallen, types of onderdelen.
- Staat iets niet in de notities en volgt het niet uit een rekenregel? Schrijf dan: `onbekend, na te vragen`.
- Leidingen of onderdelen die hergebruikt worden, komen niet op de stuklijst.
- Rond elke hoeveelheid naar boven af op een heel getal.
- Wat je aansnijdt, reken je volledig aan. Een overschot wordt ook aangerekend.

## Rekenregels
- Koelleiding: in meter, één lengte per leidingpaar (vloeistof- en gasleiding samen). Geef per binnenunit de lengte naar de buitenunit, en daaronder het totaal.
- Communicatiekabel: in meter, altijd gelijk aan het totaal van de koelleiding.
- Voedingskabel: in meter. Er is geen vaste regel. Vul alleen in als de lengte in de notities staat.
- Aansluitpunt voeding: `zekeringkast` of `stopcontact`, zoals in de notities staat.
- Elektriciteitsbuis: in meter, zoals in de notities staat.
- Kabelgoot: in stuks. Eén stuk is 2 meter. Aantal stuks = meters kabelgoot gedeeld door 2, naar boven afgerond. Voorbeeld: 7 meter kabelgoot is 4 stuks.
- Bochten en tussenstukken: per soort, bijvoorbeeld bocht 90 graden, T-stuk, dakrandstuk. Neem alleen soorten en aantallen over die in de notities staan. Staat er een route maar geen aantal? Schrijf `onbekend, na te vragen`.
- Condensafvoer: lengte in meter, en het type: `gravitair naar buiten` of `druk-PVC`. Neem het type alleen over als het in de notities staat. Kies het niet zelf.

## Uitvoer
Geef alleen deze tabel, niets anders. Voeg per binnenunit een rij koelleiding toe, en per soort bocht of tussenstuk een rij.

| Onderdeel | Hoeveelheid | Eenheid | Bron |
|---|---|---|---|
| Koelleiding unit 1 | | m | |
| Koelleiding unit 2 | | m | |
| Koelleiding totaal | | m | |
| Communicatiekabel | | m | |
| Voedingskabel | | m | |
| Aansluitpunt voeding | | - | |
| Elektriciteitsbuis | | m | |
| Kabelgoot | | stuks | |
| Condensafvoer lengte | | m | |
| Condensafvoer type | | - | |
| <soort bocht of tussenstuk> | | stuks | |

Bron: `notities` als het letterlijk in de notities staat, `rekenregel` als je het afleidde met een rekenregel, leeg bij `onbekend, na te vragen`.

## Notities
<plak hier de notities van het plaatsbezoek>
