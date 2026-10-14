# Week 3 — Mijn model kiest liever dan dat het "onbekend" zegt

## Wat ontbrak er in mijn context?

Vorige week haalde ik 98 op 100. Dat leek goed, maar mijn advertenties waren te netjes. Daarom zocht ik vijf lastige bij: drie Duitse van Kleinanzeigen, een Engelse van 2dehands, en een advertentie van een opkoper die geen horloge verkoopt.

Bij het invullen van de juiste antwoorden zag ik al dat er regels ontbraken. "Full-Set" in een titel zegt bijvoorbeeld niet wat er echt bij zit. Daar had ik geen regel voor. Nu telt alleen een doos, garantiekaart of certificaat die apart genoemd wordt.

Bij de buurtest las mijn buur "Ohne Box" bij T08 als "geen". Ik had "enkel papieren", want er staat ook "mit Zertifikat". Het probleem was dat "geen" nergens uitgelegd stond in mijn prompt. Daarna heb ik alle vijf de opties van doos_papieren omschreven.

Ik zag ook dat mijn prompt zichzelf tegenspreekt. Bij verkoper staat "precies één van particulier, handelaar", maar mijn regels zeggen "niet duidelijk? Vul onbekend in". Het model kan dan niet beide volgen.

## Mijn eerste cijfer

44 op 50 velden juist (n = 5, 1 run), op T06 tot T10.

Vijf fouten waren F1 en één was F3. Bijna alles wat het model zei, stond ergens in de advertentie. Het koos alleen verkeerd. Alleen "handelaar" bij T10 leidde het zelf af, omdat mijn prompt bij verkoper geen "onbekend" toelaat.

Het patroon is duidelijk: als iets dubbelzinnig is, kiest het model een antwoord in plaats van "onbekend". Bij T08 stonden er twee referentienummers, bij T09 twee prijzen, en bij T06 las het "Full-Set aus 2020" als bouwjaar. De F3 was bij T07: het model miste een houten doos die er letterlijk stond.

## Eén wijziging

Ik heb één regel toegevoegd: staan er twee verschillende waarden voor één veld, of kan een waarde iets anders betekenen, vul dan "onbekend" in. Want ik wil later prijzen vergelijken, en een verkeerde waarde is erger dan een lege.

Daarna draaide ik T06, T08 en T09 opnieuw. Ik ging van 27 naar 28 op 30. De prijs bij T09 en het referentienummer bij T08 waren opgelost. Het bouwjaar bij T06 bleef fout, ook al stond dat voorbeeld letterlijk in de regel.

Er kwam ook een nieuwe fout bij. Bij T08 zei het model nu "enkel doos", terwijl er "Ohne Box" staat. In de eerste run was dat juist. Mijn regel ging niet over doos of papieren, dus dit is waarschijnlijk gewoon variatie.

Daarom is dit nog geen bewijs. Drie inputs is weinig, en het model geeft niet altijd hetzelfde antwoord. Om dat echt te weten moet ik alles meerdere keren draaien.
