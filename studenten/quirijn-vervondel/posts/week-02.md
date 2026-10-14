# Week 2: 17 meter op papier, 20 op de werf

## Wat bouw ik?
Mijn broer typt na een plaatsbezoek snel notities in zijn gsm, en mijn tool maakt daar een stuklijst van met hoeveel koelleiding, kabels, kabelgoten, bochten en condensafvoer hij nodig heeft.

## Waarom een taalmodel?
De notities zijn gewone tekst, kort en rommelig, en die moeten naar vaste vakjes in een lijst. Dat is taal lezen, dus daar past een taalmodel. Prijzen opzoeken en werkuren berekenen doe ik bewust niet met AI, want daar mag geen enkel getal verzonnen worden. Dat hoort in een database met zijn prijzen van Daikin en Cebeo en dropdowns.

## Eén testinput
T01, een duo split. De notitie: slaapkamer en living, leiding unit 1 ong. 5 m en unit 2 ong. 12 m, voeding vanuit kast, condens gravitair 1 m per unit. Het juiste antwoord volgens de notitie: 17 m koelleiding, 17 m communicatiekabel, voeding uit de zekeringkast, 2 m condens, de rest onbekend. De tool gaf in beide runs 17 m en zette alles zonder aantal netjes op onbekend. Enkel "vanuit kast" snapte hij niet, want bij ons is dat de zekeringkast. Wat me het meest opviel: op de werf hadden we echt 20 m nodig. Bij de koelleiding deed de tool dus niets fout, maar de notitie zelf was te vaag. Ik koos deze omdat hij toont dat de tool niet beter kan zijn dan wat mijn broer opschrijft.
