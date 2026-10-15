# Week 4 — Tijd vrijmaken voor mijn eigen analyses

## Mijn tool in cijfers

Deze week heb ik mijn werkwijze veranderd. Eerst vergeleek ik twee rapporten in een antwoord. Nu werk ik één bedrijf per run bij in Excel, omdat bedrijven op verschillende dagen rapporteren. De tool verzamelt FCF, financiële schuld en kwartaalomzetgroei. De oorspronkelijke bedragen, perioden, definities en bronpagina’s blijven bewaard. Excel toont vergelijkingen en grafieken in USD. Ik selecteer een jaar en kwartaal; de datums volgen automatisch.

Voor de oudere omzetgroeitests T06–T10 beoordeelde ik 10 op 10 runs als geslaagd: 100% (n = 5 inputs, 2 runs per input). Dit geldt alleen voor omzetgroei. Het is geen succespercentage voor de nieuwe Excel-werkwijze. Bij eerdere tests miste de tool eenmaal het gerapporteerde AMD-percentage: F3, gemist. Tussen die twee runs wisselde de keuze tussen gerapporteerd en berekend: F6. Ook bij Alphabet wisselde het onzekerheidslabel over dezelfde schuldinformatie: F6. Dat zijn twee vastgelegde gevallen van wisselend gedrag, geen volledige foutentelling over alle tests.

In Excel staan nu twaalf metingen voor vier bedrijven. Deze week zijn voor Novo Nordisk en Lilly telkens drie waarden uit één rapport toegevoegd. Ik heb ze in de bronnen gecontroleerd. Bij schuld blijven beperkingen over leases zichtbaar. Deze twee updates bewijzen nog niet dat de nieuwe prompt voor alle bedrijven betrouwbaar is. Een volledige, uniforme totaalscore voor T01–T10 ontbreekt nog, doordat promptversies en controles verschillen.

## Wat kost één run?

Mijn gemeten Netflix/Uber-sessie gebruikte 807.321 inputtokens, waarvan 725.248 uit cache, en 6.822 outputtokens. Met de GPT-6.1 Sol-tarieven uit de les bereken ik $0,3048908 voor die hele sessie. Dat is een API-equivalent, geen bijkomende factuur boven op mijn Plus-abonnement.

De meting bevat ook uitleg over bijlagen, mislukte pdf-leespogingen en meerdere stappen. De gebruikte context van 82,9K tokens achteraf is geen cumulatief verbruik. Een beginmeting ontbreekt, waardoor ik mijn eigen prompt en antwoord niet correct van de overige context kan scheiden. Ik heb dus nog geen geïsoleerde kost per nieuwe bedrijfsupdate.

Als voorlopig rekenscenario gebruik ik toch de volledige oude sessiekost per update. Bij mijn geplande 40 updates per jaar is dat gemiddeld $1,02 per maand, $10,16 bij 10× en $1.016,30 bij 1.000×. Met dezelfde tokenaantallen en de Luna-tarieven uit de les wordt dat ongeveer $0,06, $0,63 en $62,90. Dit is alleen een prijsvergelijking; ik heb Luna niet getest op kwaliteit of werkelijk tokenverbruik.

De opgehaalde ECB-referentie van 14 oktober geeft 1 euro = 1,1195 dollar, dus ongeveer €0,8933 per dollar. De oude sessie komt daarmee op ongeveer €0,2723. Bron en berekeningen staan in `build/kosten.md`. Dit vervangt de ronde lesaanname van €0,90 per dollar.

## Met de hand of met de tool?

Handmatig schat ik vijf minuten voor het rapport zoeken, 45 minuten voor cijfers verzamelen, invoeren en berekenen, en tien minuten voor controleren. Samen is dat 60 minuten per bedrijfsupdate. De eerste keer schat ik drie uur, daarna één uur per bedrijf doordat het bestand al bestaat. Met de tool schat ik vijftien minuten, inclusief nakijken. Dit zijn mijn schattingen, geen gemeten tijden. Beide gaan uitsluitend over verzamelen, noteren en cijfercontrole. Mijn eigen analyses en het afzonderlijk volgen van risico’s vallen erbuiten.

Het verschil is 45 minuten per update. Tien bedrijven per kwartaal geven 40 updates per jaar: 30 uur mogelijke tijdwinst. Gemiddeld is dat 2,5 uur per maand, ongeveer 35 minuten per week en vijf minuten per kalenderdag. Het werk valt in werkelijkheid rond rapportages.

Ik waardeer mijn tijd persoonlijk op €5 per uur. Handmatig werk zou ten koste gaan van mijn trainingen en familietijd. De geschatte waarde is dus €150 per jaar vóór toolkosten. Met de voorlopige oude sessiekost als vervanging wordt dat €150 − 40 × €0,2723 = ongeveer €139,11. Dit is geen aangetoonde netto-opbrengst van de nieuwe workflow. Zonder tool zou ik het handwerk mogelijk niet doen. De tool maakt de opvolging vooral haalbaar. Betere beleggingen hoop ik ermee te ondersteunen, maar die opbrengst is niet gemeten.

## Mijn zwakste cijfer

Ik vertrouw de 40 updates het minst. Soms volg ik de beurs meer, soms moet ik een kwartaal inhalen. Ik moet consistent blijven. Bij twintig updates halveert de tijdwinst naar vijftien uur en de waarde vóór kosten naar €75. Met hetzelfde voorlopige kostenscenario blijft ongeveer €69,55 over. Later inhalen verlaagt het jaarvolume niet automatisch. Historische data, lijngrafieken per bedrijf en nieuwsupdates blijven toekomstige uitbreidingen. Eerst wil ik mijn huidige werkwijze consequent gebruiken.
