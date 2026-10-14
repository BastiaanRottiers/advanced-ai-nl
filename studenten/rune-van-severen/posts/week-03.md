# Week 3 — Goed opgezet, maar nog geen bewijs

Mijn Build haalt gegevens uit een bericht van een powerlifter: geslacht, lichaamsgewicht, squat, bench, deadlift en total. Het antwoord is één regel JSON. Staat een veld er niet in, dan schrijft het model "niet vermeld". Het model mag niets uitrekenen, want de coach rekent zelf, en een berekend getal ziet er even zeker uit als een vermeld getal.

## Wat ontbrak er in mijn context?

Bij de audit van mijn prompt v1 gaf ik elke lijn het nummer van een bouwsteen. Bouwsteen 4, voorbeelden, ontbrak. Dat zag ik pas bij de audit, omdat het voordien nergens duidelijk werd gezegd dat die erin moesten. Misschien was ik niet correct genoeg in mijn prompt.

Ik voegde vier voorbeelden toe: een Nederlands bericht met alles erin, een Engels bericht zonder total, een Frans bericht en een bericht waarin de bench nog niet getest is. Daarna heb ik input 4 van mijn testset vervangen, omdat die te veel op een van de voorbeelden leek. Ik herschreef ook één regel met een "want": "Gok niet. Want dan kloppen de GL-points niet, en wordt de atleet overschat of onderschat."

## Mijn eerste cijfer

Run 1: 10 op 10 juist (n = 10, 1 run). Run 2: opnieuw 10 op 10. Samen: 20 op 20 juist (n = 10, 2 runs). Geen fouten in één van de zes klassen, en elke input gaf twee keer hetzelfde antwoord.

Ik testte elke input in een nieuw gesprek, in een lege map, zonder tools of web search, zodat het model mijn eigen context niet meelas. De lastige inputs zaten erbij: gewichten in lbs die niet omgerekend mochten worden, een Frans bericht met alleen een total, "-83 kg klasse" (een gewichtsklasse, geen lichaamsgewicht), "rond de 100 kg" en "Ik ben sterk." zonder enig getal.

Ik had niet gedacht dat alles correct ging zijn van run 1. Blijkbaar is het goed opgezet. Ik denk dat er geen fouten zijn omdat de criteria zo meetbaar zijn.

## Eén wijziging

Ik heb niets veranderd, want er waren geen foute inputs om opnieuw te draaien.

Ik denk dat het bij echte lifters ook zou werken, mits je meegeeft wat je allemaal moet weten. Toch is het nog geen bewijs. Ik denk dat je voor een programma een grotere testset moet gebruiken. Er mogen geen fouten in het programma sluipen. Aangezien de inputs zelf gegenereerd zijn, is de 20 op 20 een goede start.
