ik# Week 3 — Eerste duidelijke test

## Wat ontbrak er in mijn context?

Bij de start van mijn buurtest botste ik al snel op een probleem: mijn buur gaf bij T04 een ander antwoord dan mijn model. Mijn model zei overal `onzeker`. Ik zag dat je uit een vage tekst soms toch iets kunt afleiden, bijvoorbeeld als er "zwaar" bij een training staat.
Ik dacht dat "iets intensiever" niet genoeg was. Dit is omdat het na een heel lichte training kan zijn, en dan was de training erna niet per se intensief.
Een tweede probleem was bij T09: bij "Harde trainingen" stond alleen een getal. Mijn buur schreef `3` (voorbije week), ik bedoelde `2` (advies voor volgende week). Ik heb er "voor volgende week" bij gezet, met een reden waarom.
De zwaar-regel hoort bij bouwsteen 2 (regels met waarom), het veld Harde trainingen bij bouwsteen 3 (labels en vorm). Hier zat dus een fout en die vond ik dankzij de buurtest.

## Mijn eerste cijfer

Mijn eerste cijfer was 4 op 5 juist (n = 5, 1 run).
De fout zat bij T04, klasse F3 was gemist waardoor het model zei `onzeker`, terwijl ik toen vond dat je wel iets kon afleiden. Later heb ik aangepast dat je soms wel iets kan afleiden uit een onzekere omschrijving namelijk met het woord zwaar. Voor T04 vond ik daarna dat `onzeker` toch een goed antwoord was (ik herzag mijn juiste antwoord, zie hieronder), omdat het model te weinig informatie heeft om een deftig advies te geven. Je kunt wel nog iets afleiden zonder dat je weet of het kracht, lopen of fietsen is. Dit is alleen nog geen bewijs aangezien het maar een klein aantal testen zijn.

## Eén wijziging

De eerste is dat als de sporter "zwaar" zegt, telt een training als hard, ook bij krachttraining, en ook als je niet weet of het kracht, lopen of fietsen is, omdat de sporter het beste zelf kan voelen wat zwaar is voor zijn lichaam en waar hij last van gaat krijgen. Hierna draaide ik T06 opnieuw. Het antwoord bleef juist, alleen de Reden telde 4 harde dagen in plaats van 3.
T04 draaide ik niet opnieuw. Ik herzag mijn juiste antwoord naar `onzeker`. Het model verbeterde niet, ik veranderde het juiste antwoord. Het cijfer werd daardoor 5 op 5, maar dat is een andere meetlat. Het is nog geen bewijs omdat er maar 5 testen zijn gedaan met telkens één run, en het juiste antwoord is aangepast nadat ik het modelantwoord zag. Er komen misschien nog andere problemen bij meer inputs en meer runs. Ik ben tevreden over de wijziging, omdat de tool nu nauwkeuriger leest wat zwaar is.
