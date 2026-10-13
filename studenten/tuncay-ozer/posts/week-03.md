# Week 3 — Mijn eerste cijfer: 4 op 5

## Wat ontbrak er in mijn context?

Ik gebruik verschillende vormen berichten. Mijn broertje deed de buurtest en gaf dezelfde antwoorden als ik (3 van 3 gelijk). Maar hij kent me al heel goed. Hij weet dat ik met 36X3 36 kg voor 3 reps bedoel, omdat ik nooit 3 kg voor 36 reps zou doen. Dat kan verwarrend zijn voor een buurtest.

Het model wist dat niet. Bij T10 (`arm day, spidercurl 12X12 voor 3sets.`) liet het reps en gewicht weg en zette `12X12` in de notitie. Voor een mens is dat vanzelfsprekend: waarom zou ik reps x sets bedoelen en dan geen gewicht vermelden, terwijl het over progressie gaat? Het gewicht is een van de belangrijkste dingen om je progressie te volgen.

## Mijn eerste cijfer

4 op 5 juist (n = 5, 1 run). Eén fout, klasse F3 (gemist): T10, reps en gewicht stonden in `12X12` maar het model vond ze niet.

Ik vind de prompt vanzelfsprekend, en de fout bij T10 vind ik onnozel. Ik verwacht dat meer inputs meer fouten geven, omdat ik moet blijven ontwikkelen. Wat ik nu heb, is een basis, een eenvoudig model. Dat is een verwachting, geen meting.

## Eén wijziging

Ik voegde een regel toe: staat er `A x B` zonder apart gewicht in kg, dan is A het gewicht en B de reps, want zo typ ik het altijd. Zijn A en B hetzelfde, zoals bij `12X12`, dan neemt het model allebei over: gewicht x reps.

T10 ging van fout naar juist (reps 12, gewicht 12). Dat `armday` nu in de notitie staat, vind ik niet erg. T06 bleef juist. T03, T05 en T09 draaide ik niet opnieuw.

Het is nog geen bewijs. Geen enkele regel die er nu in staat, is een garantie dat alles werkt. Naarmate ik fouten zie, pas ik de regels aan. Met tien inputs en één run kan ik nog geen conclusies trekken.
