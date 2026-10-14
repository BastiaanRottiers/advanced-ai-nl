# Log

## Week 2 — v1, eerste runs
- 5 inputs (T01–T05), elk 2 keer gedraaid met `prompt.md` (v1). Elke run in een nieuwe sessie in een lege map, zonder tools.
- Resultaat: "interessant" 8 op 10 juist, "soort werk" 10 op 10 juist (n = 5, 2 runs). Geen wisselende antwoorden.
- De 2 fouten waren allebei T02: ik zei "ja", de tool zei "onzeker" omdat de oppervlakte niet in de beschrijving staat.
- Ruwe antwoorden: `runs-v1.txt`.

## Week 3 — juist antwoord T02 aangepast
- T02: mijn juiste antwoord aangepast van "ja" naar "onzeker". De tool had gelijk: de beschrijving zegt niet hoe groot het akkerland is, dus je kan niet weten of het meer dan één dag werk is. De fout zat in mijn testset, niet in de tool.
- Nieuw cijfer met dezelfde runs: "interessant" 10 op 10, "soort werk" 10 op 10 (n = 5, 2 runs).

## Week 3 — testset naar 11, run 1 en 2 op T06–T11
- 6 nieuwe inputs uit Hooglede (T06–T11), waarvan 2 beslissingen. Lastige: kort en vaag (T08, T11), zonder trefwoorden als "slopen" of "graven" (T07, T09), een "nee" (T10).
- Juiste antwoorden vooraf geschreven. T06 en T07 nog vóór het draaien aangepast: T06 van "afbraak" naar "beide" (verharding is grondwerk, zoals bij T04) en T07 van "onzeker" naar "ja" (mijn reden zei eigenlijk ja).
- T06–T11 elk 2 keer gedraaid met v1, in een nieuwe sessie in een lege map, zonder tools.
- Resultaat T06–T11: "interessant" 10 op 12, "soort werk" 12 op 12. Geen wisselende antwoorden.
- De 2 fouten zijn allebei T08: ik zei "onzeker", de tool zei "nee".
- Totaal met v1: "interessant" 20 op 22, "soort werk" 22 op 22 (n = 11, 2 runs).
- T08: mijn juiste antwoord aangepast van "onzeker" naar "nee". Ik koos "onzeker" omdat ik de aanvraag zelf niet begreep, niet omdat de beschrijving te weinig zei. De tool had gelijk. Opnieuw een fout in mijn testset, niet in de tool.
- Nieuw totaal met v1: "interessant" 22 op 22, "soort werk" 22 op 22 (n = 11, 2 runs). Alle verschillen tot nu toe (T02, T08) zaten in mijn juiste antwoorden.

## Week 3 — één wijziging: v2
- Wat ik veranderde: de uitleg bij "onzeker". Nieuw: "alleen als er iets belangrijks niet in de beschrijving staat, zoals de grootte van het werk. Niet omdat een woord technisch of onbekend is. Want als je te vaak onzeker zegt, moet iemand alle aanvragen toch zelf nalezen."
- Waarom: bij T08 koos ik zelf "onzeker" omdat ik een woord niet kende. Dat is geen goede reden. Bij T02 was "onzeker" wel juist, omdat de grootte er niet in stond.
- Opnieuw gedraaid met v2: T02, T03 en T08, elk 2 keer. Oude versie: `prompt-v1.md`. Ruwe antwoorden: `runs-v2.txt`.
- Resultaat: 6 op 6 juist, zelfde antwoorden als met v1. T02 en T03 blijven "onzeker", T08 blijft "nee". De regel maakte niets kapot, maar verbeterde ook niets meetbaar: v1 deed het al juist.
- Nog geen bewijs: 3 inputs, 2 runs. Alle 11 inputs opnieuw draaien met v2 moet nog.
