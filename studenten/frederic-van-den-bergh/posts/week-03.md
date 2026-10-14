# Week 3 — Mijn buur kende de labels niet, en mijn prompt ook niet

## Wat ontbrak er in mijn context?
Mijn buur is niet bekend met vrachtwagens. Bij de buurtest koos hij daarom de dingen die voor hem het meest logisch leken. Hij gebruikte dus geen voorkennis, alleen zijn logica. Ik gaf hem drie berichten: T05 (lucht blazen), T06 (de benne gaat niet omhoog) en T10 (de wagen trilt raar). Bij T05 en T10 koos hij "direct stilleggen", terwijl ik "direct terugkeren naar depot" en "onzeker" had. Alleen bij T06 waren we gelijk: 1 van de 3.

Zo zag ik dat mijn prompt de labels niet uitlegde. Ik moest de definities erbij zetten. Direct stilleggen: de vrachtwagen kan niet meer verder rijden en moet getakeld worden. Direct terugkeren naar depot: de vrachtwagen kan nog rijden, maar best niet lang meer, dus de chauffeur zet hem meteen op het depot.

## Mijn eerste cijfer
Mijn eerste cijfer was **4 op 5 juist (n = 5, 1 run)**. Dat vond ik hoog, want dat zou betekenen dat het model goed werkt. Daarna draaide ik alle tien inputs twee keer: Run 1 had 7 op 10, Run 2 had 5 op 10, samen **12 op 20 juist (n = 10, 2 runs)**.

Ik had 8 fouten: 4 keer F1 (fout), 1 keer F5 (twijfelt maar kiest toch) en 3 keer F6 (wisselend: T04, T06 en T10 waren eerst juist en daarna fout). Wat die verdeling betekent, weet ik nog niet.

Waarom Run 2 minder scoorde, weet ik ook niet. Mijn gok is dat de regel die ik toevoegde de oorzaak is. Let op: die regel gaat alleen over lucht blazen, en de eerste vijf inputs draaiden met de oude prompt (v1) en de rest met de nieuwe (v2). Dus het kan ook anders liggen.

## Eén wijziging
Bij T05 (lucht blazen) koos het model in Run 1 "direct terugkeren naar depot", terwijl de wagen meestal nog kan rijden. Ik voegde een regel toe: alleen lucht blazen, zonder drukverlies en zonder dat hij niet meer kan rijden, is "snel nakijken", want hij kan nog rijden.

Ik veranderde ook het juiste antwoord van T05, nadat ik de uitkomst van het model had gezien. Eerst was het remmen / onzeker, dan snel nakijken, en uiteindelijk onzeker / snel nakijken. Dat maakt T05 een zwak meetpunt, want het antwoord is deels gevormd door wat het model zei.

Na de wijziging draaide ik T05 twee keer met de nieuwe prompt: één keer kwam er "onzeker / snel nakijken" uit, één keer "onzeker / onzeker". Dat is nog geen bewijs. Ik draaide het maar twee keer. Het is ook een moeilijke situatie in het echte leven, en een computer kan daar nog niet echt een antwoord op weten.
