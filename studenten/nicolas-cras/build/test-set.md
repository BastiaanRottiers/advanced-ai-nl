# Testset

Het juiste antwoord schrijf ik vooraf, volgens `regels.md`, en voor ik de tool laat draaien. Run 1 en Run 2 vul ik pas daarna in.

Bij het nakijken: bij een combinatie in het veld Soort maakt de volgorde niet uit (`gym + lange lage hartslag` is goed als `lange lage hartslag + gym` het juiste antwoord is, en omgekeerd).

| ID | Input | Doel | Belasting | Herstel | Volume | Harde trainingen | Focus | Soort trainingen | Waarom | Run 1 | Run 2 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| T01 | `inputs/t01.txt` | aerobe basis | zwaar | voldoende | minder | 2 | herstel | lange lage hartslag | Herstel voldoende: trainingen lukten zoals gepland. Advies volgens tabel (zwaar + voldoende). Harde trainingen: di (full-body met squats), wo (lange rit, zwaar laatste uur), za (lange bike + brick). 3 hard, dus zwaar. | normaal, voldoende, meer, minstens 2, opbouw, lange lage hartslag (telde 2 harde: di, za) | zwaar, voldoende, minder, 2, herstel, lange lage hartslag (telde 3 harde: di, wo, za) |
| T02 | `inputs/t02.txt` | kracht en snelheid | zwaar | onvoldoende | minder | max 1 | herstel | lange lage hartslag + gym | Herstel onvoldoende: do geschrapt door vermoeidheid, za tempo flink gezakt. Advies volgens tabel (onvoldoende). Gym rustig, met genoeg rust tussen de sets. Harde trainingen: ma (beentraining), di (HYROX), wo (intervallen), za (HYROX-simulatie). 4 hard, dus zwaar. | zwaar, onvoldoende, minder, max 1, herstel, lange lage hartslag + gym | zwaar, onvoldoende, minder, max 1, herstel, lange lage hartslag + gym |
| T03 | `inputs/t03.txt` | spiermassa opbouwen | normaal | voldoende | meer, niet te veel in één keer | minstens 2 | opbouw | gym + lange lage hartslag | Herstel voldoende: trainingen lukten zoals gepland. Advies volgens tabel (normaal + voldoende). Soort: gym en 1 loop- of fietstraining om conditie te behouden; de harde trainingen zijn beentraining. Harde trainingen: alleen vr (beentraining), zwem-intervallen zijn niet hard. 1 hard + 1 rustdag + veel krachtvolume: ik kies normaal. Argument: bij gesplitste spiergroepen (boven, boven, benen) zijn de spieren hersteld voor ze weer nodig zijn. Past niet in de regel normaal = 2 harde, zie regels.md. | normaal, voldoende, meer niet te veel, minstens 2, opbouw, gym + lange lage hartslag (telde do-zwemintervallen als hard) | normaal, voldoende, meer niet te veel, minstens 2, opbouw, gym + lange lage hartslag (telde do-zwemintervallen als hard) |
| T04 | `inputs/t04.txt` | geen doel | onzeker | onzeker | onzeker | onzeker | onzeker | onzeker | Na de nieuwe regel (alleen "zwaar" telt als hard): alleen zaterdag ("later wat zwaarder") is hard, dus 1 harde training. Geen duidelijk herstelsignaal. Het doel "gewoon beter worden" staat niet in de lijst. Dus alles onzeker. (Tussendoor na de buurtest even aangepast naar normaal/onvoldoende, zie log.md.) | v4: onzeker (alle zes velden). Oud (v1, gescoord op het oude antwoord): onzeker (alle zes velden) | onzeker (alle zes velden) |
| T05 | `inputs/t05.txt` | kracht en snelheid | zwaar | onvoldoende | minder | max 1 | herstel | lange lage hartslag + gym | Herstel onvoldoende: za zwaar en do geschrapt, terwijl er normaal geen rustdag gepland was. Advies volgens tabel (onvoldoende). Soort zoals week 2: gym rustig met genoeg rust tussen de sets. Harde trainingen: ma (HYROX), wo (intervallen), vr (full-body met compound lifts), za (HYROX-simulatie). 4 hard, dus zwaar. | zwaar, onvoldoende, minder, max 1, herstel, lange lage hartslag + gym | zwaar, onvoldoende, minder, max 1, herstel, lange lage hartslag + gym |
| T06 | `inputs/t06.txt` | spiermassa opbouwen | zwaar | onvoldoende | minder | max 1 | herstel | gym + lange lage hartslag | maandag (zware upperbody), dinsdag, donderdag en zondag zijn hard, herstel onvoldoende door spierpijn | zwaar, onvoldoende, minder, max 1, herstel, gym + lange lage hartslag (telde di, do, zo als hard) | |
| T07 | `inputs/t07.txt` | aerobe basis | zwaar | onvoldoende | minder | max 1 | herstel | lange lage hartslag | di, do en vr zijn hard. deze trainingsweek was duidelijk te zwaar aangezien er twee trainingen zijn geschrapt, de volgende week moet dus iets lichter zodat het lichaam goed kan herstellen | | |
| T08 | `inputs/t08.txt` | spiermassa opbouwen | onzeker | onzeker | onzeker | onzeker | onzeker | onzeker | er wordt geen verdere informatie gegeven over de workout, enkel het type maar niet over de intensiteit | onzeker (alle zeven velden) | |
| T09 | `inputs/t09.txt` | kracht en snelheid | zwaar | voldoende | minder | 2 | herstel | lange lage hartslag + gym | er zijn drie harde trainingen (di, wo, vr), deze week was zwaar maar met goed herstel, na een zware week is het slim om een klein beetje af te nemen in volume, maar niet te veel, zodat je lichaam zeker volledig hersteld is en daarna kan je dan weer een heel zware week doen | zwaar, voldoende, minder, 2, herstel, lange lage hartslag + gym (telde di, wo, vr als hard) | |
| T10 | `inputs/t10.txt` | aerobe basis | normaal | onzeker | onzeker | onzeker | onzeker | onzeker | ma en di zijn hard, dus normaal. herstel onzeker want er staat geen herstelsignaal | normaal, onzeker, onzeker, onzeker, onzeker, onzeker (telde ma en di als hard) | |


## Na aanpassing prompt (v2)

In v1 gaf T01 run 1 een fout antwoord: de lange zone-2 rit met zwaar laatste uur telde niet mee als hard. Ik heb in `prompt.md` twee regels toegevoegd (full-body met squats is beentraining; een lange rustige training met een zwaar deel is hard). De v1-prompt staat in `prompt-v1.md`.

T01 opnieuw gedraaid, drie runs in nieuwe gesprekken: alle drie zwaar, voldoende, minder, 2, herstel, lange lage hartslag, met 3 geteld harde trainingen (di, wo, za). Dat klopt met mijn antwoord.

T02 tot en met T05 ook opnieuw gedraaid met v2, elk twee keer in nieuwe gesprekken (8 runs):

| Input | v2 run 1 | v2 run 2 | Klopt met mijn antwoord? |
|---|---|---|---|
| T02 | zwaar, onvoldoende, minder, max 1, herstel, lange lage hartslag + gym | hetzelfde | ja, beide |
| T03 | normaal, voldoende, meer niet te veel, minstens 2, opbouw, gym + lange lage hartslag | hetzelfde | ja, beide (maar zie hieronder) |
| T04 | onzeker (alle zes velden) | onzeker (alle zes velden) | ja, beide |
| T05 | zwaar, onvoldoende, minder, max 1, herstel, lange lage hartslag + gym | hetzelfde | ja, beide |

Totaal met v2: 11 van 11 runs komen overeen met mijn antwoord.

Let op bij T03: het model telt de zwem-intervallen van donderdag als hard (twijfelgeval, dus hard), terwijl ik zei dat die niet hard zijn. Het antwoord klopt dus voor een andere reden dan de mijne. Mijn eigen telling (1 harde training) past niet in mijn geschreven regel voor normaal (2 harde). Dit blijft een open punt in `regels.md`.

## T03 opgelost (v3)

Beslissing: een week met 1 harde training en 3 of meer krachttrainingen is normaal (gesplitste spiergroepen herstellen tussen de sessies). Daarnaast staat nu expliciet in de prompt dat een technische zwemtraining met korte intervallen niet hard is. Beide staan in `regels.md` en `prompt.md`. De v2-prompt staat in `prompt-v2.md`.

T03 opnieuw gedraaid, twee runs in nieuwe gesprekken: beide normaal, voldoende, meer niet te veel, minstens 2, opbouw, gym + lange lage hartslag. Het model telt nu 1 harde training (vr, beentraining) naast 3 krachttrainingen. Het antwoord klopt nu ook om de goede reden.

T01, T02, T04 en T05 zijn niet opnieuw gedraaid met v3. Ze hebben geen week met 3 of meer krachttrainingen en 1 harde training, maar dat is niet getest.

## Run 1 op v4 (week 3)

Vijf inputs, elk één keer, in een nieuw gesprek: T04, T06, T08, T09, T10.

| Input | Juist? | Fout |
|---|---|---|
| T04 | ja (na herziening van het juiste antwoord) | Eerst F3 Gemist, toen het juiste antwoord nog `normaal, onvoldoende, ...` was. Het juiste antwoord is later herzien naar alles `onzeker`, zie log.md. |
| T06 | ja | |
| T08 | ja | |
| T09 | ja | |
| T10 | ja | |

**5 op 5 juist (n = 5, 1 run)**, met de aantekening dat T04 eerst als fout (F3) gescoord was en daarna het juiste antwoord is herzien

## Na de wijziging (v5)

Wijziging: alleen als de sporter "zwaar" zegt telt een training als hard, ook bij krachttraining. Oude versie: `prompt-v4.md`.

T06 opnieuw gedraaid, één run in een nieuw gesprek: zwaar, onvoldoende, minder, max 1, herstel, gym + lange lage hartslag. Dat is hetzelfde antwoord als met v4 en het klopt met mijn juiste antwoord. Het verschil zit in de Reden: het model telt nu 4 harde dagen (ma "zware upperbody", di, do, zo) in plaats van 3. Maandag telt dus mee door de nieuwe regel. Mijn Waarom bij T06 is daarna aangepast naar 4 harde dagen (ma, di, do, zo), volgens de nieuwe regel.
