# Week 3 — Ik ken niet alle termen

## Wat ontbrak er in mijn context?
Ik heb geen buurtest gedaan, maar mijn tool liet me zelf zien wat er ontbrak. Alleen ontbrak het niet in mijn prompt, maar in mijn eigen juiste antwoorden.

Bij T02 ging het over "nivellering akkerland in functie van verbeterd bodembeheer". Ik zei ja, de tool zei twee keer onzeker, omdat de oppervlakte niet in de beschrijving staat. Dan kan je niet weten of het meer dan één dag werk is. De tool had gelijk.

Bij T08 ging het over "bijstelling voorwaarden kws afscheider". Ik zei onzeker, omdat ik niet wist wat het betekende. De tool zei twee keer nee: het gaat alleen over de voorwaarden van een koolwaterstofafscheider, zonder afbraak of graafwerk. Ook hier had de tool gelijk.

Ik leerde dat de tool soms beter is dan ik, omdat ik zelf ook niet alle termen even goed ken.

## Mijn eerste cijfer
Ik heb mijn testset uitgebreid van 5 naar 11 echte bouwaanvragen uit Zonnebeke, Ieper en Hooglede. Elke input heb ik 2 keer gedraaid.

Eerst: "interessant" 18 op 22 juist, "soort werk" 22 op 22 juist (n = 11, 2 runs). De 4 fouten waren T02 en T08, telkens 2 keer. Na het aanpassen van mijn juiste antwoorden bij T02 en T08: 22 op 22. Geen enkele keer gaf de tool een ander antwoord bij dezelfde input. Ik had dus geen fouten van de tool om in te delen in F1 tot F6. Alle fouten zaten in mijn testset.

Ik denk dat mijn testset nog te makkelijk is. Volgende keer voeg ik een aanvraag in het Frans toe en een sloop van een tuinhuis. Dat laatste test mijn regel dat werk van één dag niet interessant is.

## Eén wijziging
Ik heb de regel bij "onzeker" veranderd. Nu mag de tool alleen onzeker zeggen als er iets belangrijks niet in de beschrijving staat, zoals de grootte van het werk, en niet omdat een woord technisch of onbekend is. Ik koos die regel omdat anders iemand alle aanvragen zelf moet nalezen, en dat is zeer veel werk.

Daarna heb ik T02, T03 en T08 opnieuw gedraaid, elk 2 keer. Alle 6 waren juist, hetzelfde als ervoor. De regel maakte dus niets kapot, maar verbeterde ook niets dat ik kan meten. Bewijs is het niet: het zijn maar 3 inputs en 2 runs.
