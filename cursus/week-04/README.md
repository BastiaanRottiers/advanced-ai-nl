# Week 4 — Tokens en kosten

*Wat kost één run, en wat levert hij op?*

Woensdag 14 oktober, 10:30–13:30.

## Waar het om gaat

Je tool werkt, en je weet hoe vaak. Vandaag meet je wat één run kost. Daarna reken je uit wat dat wordt op schaal, en wat het werk met de hand kost.

Die cijfers zijn de basis van twee criteria van je memo: **kosten** (15%) en **waarde** (20%). Wat je vandaag meet, gebruik je tot week 13.

Vandaag leg je ook je **scenario** voor de memo vast, en je begint aan **reflectie 1**. **Build checkpoint 1** doe je thuis, vóór dinsdag 20 oktober.

## Wat je om 13:30 hebt

- De tokens en de kost van één run van je tool: de context en jouw deel.
- De kost per maand op de echte plek, bij 10× en bij 1.000× dat volume.
- Een berekening: hoeveel tijd wint je tool per dag, week, maand en jaar, en wat is dat waard?
- Je lijst voor thuis: checkpoint 1.
- Je scenario in vijf lijnen, in `scenario.md`.
- Een begin van reflectie 1 en van je post.

## Verloop

| | |
|---|---|
| 10:30 | `start week 4`, en je cijfer van week 3 |
| 10:40 | Raad de prijs |
| 10:48 | Wat een token kost, met demo |
| 11:03 | Ronde 1: wat kost één run? |
| 11:23 | Abonnement of API: de subsidie en Uber |
| 11:41 | Ronde 2: wat kost het per maand? |
| 11:56 | Waarde: hoeveel tijd wint je tool? |
| 12:15 | Pauze |
| 12:25 | Je scenario in vijf lijnen |
| 12:38 | Reflectie 1 |
| 12:48 | Post en pull request |

## Start

Open je tool in je eigen map, `studenten/jouw-naam/`. Typ:

| Claude | Codex |
|---|---|
| `/week start week 4` | `$week start week 4` |

Check daarna: staan je prompt en je testset van week 3 in `build/`? Nee? Zeg het meteen.

Werk je na vandaag nog aan week 3 (deadline vrijdag 16 oktober, 23:59)? Je pull request van week 3 is al gemerged. Na een nieuwe push typ je `dien week 3 in`: je AI maakt een nieuwe pull request.

## Wat een token kost

Je model leest en schrijft in **tokens**, dat zag je in week 3. Elke token kost geld.

- **Input en output.** Je betaalt voor wat erin gaat en voor wat eruit komt. Output kost vijf keer meer per token.
- **De context.** Je tool stuurt bij elke vraag veel meer mee dan jouw prompt: zijn eigen instructies (de systeemprompt), de beschrijving van al zijn tools, je `CLAUDE.md` en je `context.md`. Bij Claude Code is dat 20.000 tot 35.000 tokens. Je ziet het met `/context`, nog voor je iets typt. De mailsorteerder zelf is maar 300 tokens: **jouw deel**.
- **De cache.** Wat je tool vaak meestuurt, bewaart de aanbieder even. Hergebruik kost weinig, de eerste keer kost meer. Daarom kost dezelfde vraag twee keer een ander bedrag.
- **Abonnement of API.** Je abonnement kost rond 20 dollar per maand: een vast bedrag, met een limiet, voor één persoon achter een scherm. Een tool die op een echte plek duizend keer per maand zelf draait, gaat via de **API**: je betaalt per token. Dat bedrag reken je vandaag uit.
- **Een abonnement is gesubsidieerd.** Volgens SemiAnalysis kan een plan van 200 dollar voor 8.000 dollar aan tokens verbruiken. Een bedrijf op de API betaalt de volle prijs. Uber zag dat in 2026: het hele AI-budget van het jaar was op na vier maanden, omdat het per token betaalde. Bronnen: [SemiAnalysis](https://newsletter.semianalysis.com/p/anthropic-subscriptions-offer-5x), [Forbes](https://www.forbes.com/sites/janakirammsv/2026/05/17/uber-burns-its-2026-ai-budget-in-four-months-on-claude-code/).

Het bedrag dat `/cost` toont, is die API-prijs, in dollar. Met een abonnement betaal je dat niet echt. Een bedrijf dat je tool inzet wel.

Prijs per miljoen tokens, in dollar, op 14 oktober 2026:

| Model | Input | Output | Cache schrijven | Cache lezen |
|---|---:|---:|---:|---:|
| Claude Haiku 4.5 | 1 | 5 | 1,25 tot 2 | 0,10 |
| Claude Sonnet 5.5 | 2 | 10 | 2,50 tot 4 | 0,10 |
| Claude Opus 5.5 | 4 | 20 | 5 tot 8 | 0,20 |
| Claude Fable 5.1 | 10 | 50 | 12,50 tot 20 | 0,25 |
| GPT-6 Luna | 0,10 | 0,50 | — | 0,01 |
| GPT-6.1 Sol | 2 | 10 | — | 0,10 |
| GPT-6 Astra | 10 | 50 | — | 1 |

Bronnen: [Anthropic](https://platform.claude.com/docs/en/about-claude/pricing), [OpenAI](https://openai.com/api/pricing/).

Reken in euro met **1 dollar = 0,90 euro**. Dat is een aanname: check de koers van de dag in je post.

## Ronde 1: wat kost één run?

Drie commando's. Ze zitten in je tool, je hoeft niets te installeren.

1. **Open een nieuwe sessie** in je eigen map. Typ `/model haiku`, zodat je cijfers te vergelijken zijn met de demo. Typ dan, nog voor je iets vraagt: `/context`. Noteer het aantal tokens. Dat is **de context**: wat je tool meestuurt voor je één woord typt.
2. **Plak je prompt en input T01 in één bericht.** Alleen de input, niet het juiste antwoord. Laat je tool niets opzoeken of openen: elke extra stap stuurt de context opnieuw mee.
3. **Typ `/cost`.** Je ziet de tokens en de kost van de hele sessie.

Dan reken je:

- **Jouw deel** = de tokens uit `/cost` − de context uit `/context`. Dat is je prompt, je input en het antwoord.
- **Kost per run** = jouw deel × de prijs uit de tabel. Input en output apart. Dat is het getal voor je memo: een bedrijf stuurt via de API alleen jouw deel, niet de context van Claude Code.

Zet alles in `build/kosten.md`:

| Model | Context (`/context`) | Totaal (`/cost`) | Jouw deel | Kost per run | Per maand, jouw volume | 10× | 1.000× |
|---|---:|---:|---:|---:|---:|---:|---:|
| Haiku 4.5 | | | | | | | |

Zet de datum erbij. De laatste drie kolommen vul je in ronde 2.

**Draai het twee keer?** Dan zie je een ander bedrag. Dat is de cache: de tweede keer leest je tool de context terug, en dat kost een tiende.

**Codex?** Typ `/status` voor en na je run. Het verschil zijn de tokens van je run. Codex toont geen dollars met een ChatGPT-login: vermenigvuldig zelf met de GPT-prijs uit de tabel.

**Haiku denkt eerst.** Een deel van de output-tokens zie je niet: dat is het denkwerk van het model. Je betaalt het wel.

**Snel klaar? Snoei je prompt.** Haal 30% van de tokens uit je prompt en houd hetzelfde succespercentage. Draai je testset opnieuw. Lukt het? Dan is je tool goedkoper, en je weet welke zinnen niets deden. Zet het in `build/log.md`.

## Ronde 2: wat kost het per maand?

1. **Het volume.** Hoe vaak zou je tool draaien op de echte plek? Per maand. Zeg waar dat getal vandaan komt: je telde het, je vroeg het, of je schat het.
2. **Per maand.** Kost per run × volume.
3. **10× en 1.000×.** Hetzelfde, bij tien keer en bij duizend keer dat volume.
4. **Een ander model.** Reken hetzelfde volume met een ander model uit de tabel. Wat verandert er?

Vul de laatste drie kolommen van `build/kosten.md` in. Vanaf welk volume doet het bedrag ertoe? Dat is een vraag voor je memo.

## Waarde: hoeveel tijd wint je tool?

Je tool kost geld. Het werk met de hand kost tijd. Pas als je beide kent, kan je zeggen of je tool iets oplevert. Eén zin is geen argument. Je bouwt een ketting, schakel per schakel, en elke schakel heeft een bron.

Je meet dit niet met een chronometer. Je redeneert, en je schrijft het op in je post.

### De ketting

1. **Met de hand.** Uit welke stappen bestaat de taak? Geef elke stap een tijd. Zeg je bron: je deed het zelf, je vroeg het aan iemand die het werk doet, of je schat het.
2. **Met de tool.** De tijd om de tool te laten draaien, plus de tijd om de uitvoer na te kijken. Iemand kijkt altijd na. Vergeet dat niet.
3. **Winst per taak.** Met de hand − met de tool.
4. **Hoe vaak?** Per dag, per week, per maand, per jaar. Zeg waar het volume vandaan komt.
5. **Uren per jaar.** Winst per taak × taken per jaar.
6. **Wat is een uur waard?** Een uurkost, als aanname, met een bron: het loon van wie het werk doet, of wat een werkgever per uur betaalt.
7. **Min de kost van je tool.** Kost per run × runs per jaar.
8. **Netto per jaar.** Uren × uurkost − kost van de tool.
9. **Je zwakste cijfer.** Welke schakel vertrouw je het minst? Wat gebeurt er met het netto als dat getal de helft is?

### Voorbeeld: de mailsorteerder

| Schakel | Waarde | Bron |
|---|---|---|
| Met de hand | Openen en lezen 40 s · beslissen 10 s · verplaatsen 5 s = **55 s** | eigen inbox, geschat |
| Met de tool | Draaien 3 s · nakijken 10 s = **13 s** | gemeten / geschat |
| Winst per mail | 55 − 13 = **42 s** | |
| Volume | 150 per dag · 750 per week · 3.000 per maand · 33.000 per jaar | aanname: 5 dagen per week, 20 per maand, 220 per jaar |
| Uren gewonnen | 1,75 u per dag · 8,75 u per week · 35 u per maand · **385 u per jaar** | |
| Uurkost | **45 euro** | aanname: loonkost van een bediende |
| Waarde | 385 × 45 = **17.325 euro per jaar** | |
| Kost van de tool | 33.000 × 0,002 euro = **± 70 euro per jaar** (Haiku, jouw deel) | gemeten |
| Netto | **± 17.250 euro per jaar** | |
| Zwakste cijfer | De 55 s: geschat, niet gemeten. Is het 30 s, dan wint de tool 17 s per mail: ± 155 u en ± 7.000 euro per jaar. | |

Merk op: de kost van de tool is hier bijna niets. De grote vraag is of de 55 s klopt, en of 10 s nakijken genoeg is.

## Je scenario in vijf lijnen

Je memo (40%) beantwoordt één vraag: moet deze echte plek de tool gebruiken die ik bouwde? Vandaag leg je die plek vast. Zonder dit krijg je de eerste feedback op je memo pas in week 12.

Maak `scenario.md` in je eigen map:

```markdown
# Mijn scenario

1. **De plek:** <een echte plek, met naam: een bedrijf, je studentenjob, een club, het familiebedrijf, of je eigen leven. Niet "een kmo".>
2. **De beslissing:** Moet <de plek> <mijn tool> gebruiken voor <de taak>?
3. **De lezer:** <wie ja of nee kan zeggen: de zaakvoerder, het bestuur, jij zelf.>
4. **Waarom het ertoe doet:** Als ze fout kiezen, <een gevolg, met een grootte.>
5. **Wat ik nog moet uitzoeken:** <...>
```

**De test:** kan je lijn 2 beantwoorden met ja of nee? Nee? Dan heb je een onderwerp, geen beslissing.

| Onderwerp: werkt niet | Beslissing: werkt |
|---|---|
| AI in de horeca | Moet Hotel X de reviews laten sorteren door mijn tool? |
| AI voor sporters | Moet ik mijn trainingsnotities laten omzetten door mijn tool? |

Dit telt niet mee voor je cijfer. Lever dus de versie met de gaten in. Veranderen mag gratis tot week 7. Daarna kost het je veel werk.

## Reflectie 1

Een halve pagina, in `reflecties/reflectie-1.md`. Drie vragen:

1. Wat kan mijn tool nu?
2. Wat kan hij niet?
3. Welk cijfer bewijst dat?

Eén cijfer met n, uit je eigen testset of je kostenmeting. Geen "het werkt goed".

Commit je reflectie **apart**. Vraag je AI: "Commit alleen `reflecties/reflectie-1.md`, met de boodschap `Reflectie 1`."

## Thuis, vóór dinsdag 20 oktober

**Haal je 10 op 10?** Voeg eerst drie moeilijke inputs toe en draai opnieuw. Moeilijk is: dubbelzinnig, in een andere taal, heel kort, of een geval waar "onzeker" het juiste antwoord is. Een tool die altijd juist is, heeft geen fouten om te classificeren, en dan valt er niets te verbeteren.

**Build checkpoint 1** telt mee voor je cijfer (5%). Zo kijk ik je Build na. Loop de lijst af:

- [ ] Je tool bestaat en draait. Je kan één input laten lopen.
- [ ] `build/test-set.md` heeft **tien inputs of meer**, elk met het juiste antwoord, vooraf opgeschreven.
- [ ] Elke fout heeft een klasse: F1 tot F6.
- [ ] Onder je testset staat een **succespercentage met n**: "7 op 20 juist (n = 10, 2 runs)".
- [ ] `build/log.md` en `build/README.md` bestaan.
- [ ] `build/kosten.md` heeft je kost per run.

Mist er iets? Vul het aan vóór de deadline.

## Je post

Bestand: `posts/week-04.md`. **500 tot 800 woorden**: deze post wordt grondig nagekeken. Minstens één gemeten cijfer.

```markdown
# Week 4 — <titel in je eigen woorden>

## Mijn tool in cijfers
<Je succespercentage met n. Welke fouten, hoeveel van elke klasse?>

## Wat kost één run?
<De context en jouw deel: tokens en kost. Waarom het verschil? Wat kost het per maand, bij 10× en bij 1.000×? Met een ander model?>

## Met de hand of met de tool?
<De volledige ketting: met de hand (stappen, tijd, bron) → met de tool (draaien + nakijken) → winst per taak → per dag, week, maand, jaar → uren per jaar × uurkost (aanname + bron) → min de kost van je tool → netto per jaar. Elke schakel met een bron.>

## Mijn zwakste cijfer
<Welk getal vertrouw je het minst, en wat verandert er als het fout is?>
```

Indienen: typ `dien week 4 in`. Deadline: **dinsdag 20 oktober, 23:59**. Dan moeten ook checkpoint 1, je scenario en reflectie 1 in je pull request staan.
