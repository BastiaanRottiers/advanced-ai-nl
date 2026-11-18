# Week 6 — Retrieval en zoeken

*Hoe vindt een assistent zijn bronnen, en vindt hij jou?*

Woensdag 18 november, 10:30–13:30.

## Waar het om gaat

**Vindt de AI jou?**

Iedereen weet dat een AI op het web kan zoeken. Maar wat leest de AI eigenlijk? Vandaag kijk je in het bronnenpaneel, en je ziet het:

- De AI herschrijft je vraag tot een paar zoekopdrachten.
- Hij leest maar een handvol pagina's.
- Alleen die pagina's komen in het contextvenster, zoals in week 3. Daaruit komt het antwoord.

Wat niet gelezen wordt, bestaat niet voor het antwoord. **De AI vertelt over jou wat anderen over jou schrijven. Ook als het fout of oud is.**

Hetzelfde mechanisme werkt in twee richtingen:

- **Op het web:** vindt de AI jouw capstone-markt? Dat test je in de Live Query.
- **In je tool:** vindt je tool het juiste document? Dat bouw je na de pauze.

Dit telt voor het criterium **vindbaarheid** van je memo (10%).

## Wat je om 13:30 hebt

- Je Live Query: een vraag uit je capstone-markt, twee keer in je eigen AI en één keer in Google AI-modus, met de pagina's die de AI las.
- Eén zin: waarom het ene bedrijf wel genoemd werd, en het andere niet.
- Je tool die een echt document leest, in `build/bronnen/`.
- Vijf testgevallen in `build/test-set-bron.md`, en een score: x op 5.

## Verloop

| | |
|---|---|
| 10:30 | `start week 6` |
| 10:35 | Vier weken later: wat weet je nog? |
| 10:50 | Live: wat leest de AI? |
| 11:03 | Hoe een AI zijn bronnen vindt |
| 11:30 | Jouw Live Query, in paren |
| 12:10 | Wat vond de zaal? Het patroon |
| 12:25 | Pauze |
| 12:35 | Je tool leest een bron |
| 13:15 | GEO-audit, post en pull request |

## Nog vijf lessen

| | |
|---|---|
| 18 november | Retrieval en zoeken |
| 25 november | Tools, MCP en agents · pitch 1 (thuis opnemen) |
| 2 december | Prompt injection · Build-checkpoint 2 |
| 9 december | EU AI Act en GDPR · bewijscheck |
| 16 december | Memo-kliniek en peer review · Build-checkpoint 3 · pitch 2 (thuis) |
| daarna | Capstone-verdediging · datum volgt |

## Start

Open je tool in je eigen map, `studenten/jouw-naam/`. Typ:

| Claude | Codex |
|---|---|
| `/week start week 6` | `$week start week 6` |

Start je tool niet meer na vier weken? Zeg het meteen. Je buur helpt.

## Hoe een AI zijn bronnen vindt

1. **Herschrijven.** Je vraag wordt 1 tot 3 zoekopdrachten. De AI kiest de woorden, niet jij.
2. **Zoeken.** Een zoekmachine geeft 10 à 20 resultaten.
3. **Kiezen.** De AI leest er maar een handvol.
4. **In de context.** Alleen die stukken komen in het contextvenster.
5. **Antwoorden.** Uit die stukken, met bronvermelding.

In week 3 schreef je zelf de context van je tool: *je model ziet alleen wat jij het geeft.* Bij retrieval kiest de machine wat het model ziet. En je ziet het niet, tenzij je het bronnenpaneel opent.

**Je staat niet laag. Je staat er gewoon niet.** Bij Google zag je tenminste dat je op pagina twee stond. Een AI geeft één antwoord. Word je niet gelezen, dan word je niet genoemd, en je merkt het niet eens.

| | Google (SEO) | AI-assistent (GEO) |
|---|---|---|
| Wat zie je? | Tien links | Eén antwoord |
| Wie kiest? | Jij klikt | De AI koos al |
| Je eigen site | Je kan er nog op klikken | Je ziet hem nooit |
| De vraag | Hoe kom ik hoger in de lijst? | Hoe word ik gelezen en genoemd? |

Bedrijven doen de tweede richting op schaal: documenten in stukjes, per vraag de beste stukjes erbij. Dat heet **RAG**. Jij doet vandaag de kleine versie: één document.

## Jouw Live Query

In paren. Elk doet de eigen markt; je buur noteert en vraagt: "Wie ontbreekt?"

1. Stel de vraag die een klant in jouw capstone-markt echt zou stellen. Bv. een starter zoekt een boekhoudkantoor in Gent.
2. Persoonlijke case? Stel de vraag die jij als klant zou stellen. Bv. een loper zoekt een kinesist voor een blessure.
3. Twee keer in je eigen AI. Daarna één keer in **Google AI-modus** (google.com, tab AI-modus).
4. Bronnen open. Noteer alles.

**Noteer, voor elke run:**

| | |
|---|---|
| De vraag | letterlijk |
| Welke run | eigen AI 1 · eigen AI 2 · Google AI-modus |
| Zoekopdrachten van de AI | wat typte de AI zelf in? |
| Pagina's die de AI las | eigen site · vergelijkingssite · review · forum · pers |
| Genoemde bedrijven | of "geen" |
| **Zou een kenner van die markt dezelfde noemen?** | |
| **Wie had er moeten staan?** | één die ontbreekt |
| **Run 2 en Google: dezelfde bedrijven?** | |

De laatste drie zijn de belangrijkste. Die worden overgeslagen.

Geen bruikbaar antwoord, alleen algemeen advies ("zoek een kantoor met goede reviews")? Dat is een bevinding, geen mislukking: in die markt is niemand vindbaar via AI. Noteer het precies. Noemt de AI een bedrijf dat niet bestaat? Zeg het in de les.

### Waarom die wel, en die niet?

1. Kies één bedrijf dat de AI noemde, en één dat ontbreekt.
2. Zoek ze allebei zelf op.
3. Vergelijk: hoeveel reviews? Op vergelijkingssites? In de pers? Een duidelijke website?
4. Schrijf één zin: waarom staat het ene er wel, en het andere niet?

## Het patroon

Wat onderzoek zegt:

- **De AI leest vooral wat anderen over je schrijven.** In een studie van de Universiteit van Toronto kwam 82% van de bronnen van AI-zoeken van derden (pers, reviews), 18% van de sites van de merken zelf. Bij Google was dat 45% derden. ([Chen e.a., 2025](https://arxiv.org/abs/2509.08919), nog niet peer-reviewed)
- **De lijst verandert bijna elke keer.** Bij ongeveer 3.000 runs op ChatGPT, Claude en Google AI kwam minder dan 1 op 100 keer dezelfde lijst terug. Vaak genoemd worden telt, niet je plaats. ([SparkToro, 2026](https://www.searchenginejournal.com/ai-recommendations-change-with-nearly-every-query-sparktoro/566242))
- **Duidelijke, citeerbare pagina's worden vaker gebruikt.** Cijfers, citaten en bronnen toevoegen maakte pagina's tot 40% zichtbaarder in AI-antwoorden. ([Aggarwal e.a., 2024](https://arxiv.org/abs/2311.09735))

**GEO: genoemd worden. Door anderen, en vaak genoeg.** Je kan het niet kopen zoals een advertentie.

## Je tool leest een bron

1. Kies één echt document dat je tool nodig heeft: een prijslijst, een reglement, een menu, een handleiding, je eigen notities.
2. Zet het in `build/bronnen/`.
3. Laat je agent je instructies aanpassen (hieronder).
4. Schrijf zelf 5 testgevallen in `build/test-set-bron.md`: 4 die het document beantwoordt, 1 die het niet beantwoordt. Het antwoord eerst.
5. Draai ze. Tel: in hoeveel van de 5 gebruikte je tool het document juist?

Geen document bij de hand? Neem de webpagina van je capstone-plek. Kopieer de tekst in een `.md`-bestand in `build/bronnen/`. Het past: dat is misschien net de pagina die de AI vanochtend niet las.

Eén document dat in het contextvenster past. Geen stukjes, geen databank: dat is voor later.

Plak dit bij je agent:

> Mijn tool krijgt een bron. Het document staat in `build/bronnen/`. Pas mijn instructies aan: gebruik dit document als bron, zeg bij elk antwoord uit welk deel van het document het komt, en zeg het eerlijk als het document het antwoord niet bevat. Kopieer het lege sjabloon `cursus/week-06/test-set-bron.md` naar `build/test-set-bron.md`. Vul het niet in: de 5 testgevallen schrijf ik zelf, met het antwoord eerst. Als ik ze heb, draai je mijn tool op B01 tot B05, elk in een nieuwe sessie, en zet je per geval het antwoord en het deel van het document dat de tool gebruikte in de kolom Run 1. Kijk ze niet zelf na.

Kijk daarna zelf na, per geval: juist of fout. Hoe weet je dat het antwoord uit het document komt, en niet uit wat het model al wist?

Je testset van week 5 (set v2, T01–T30) blijft ongewijzigd. De bron-gevallen staan apart.

## Thuis: GEO-audit

**Kan AI dit bedrijf vinden?** Neem één bedrijf: het bedrijf dat in je Live Query had moeten staan, of je capstone-plek. Geef per criterium een score van 0 tot 3, met je bewijs. Niet alleen een cijfer.

| # | Criterium | Wat je checkt |
|---|---|---|
| 1 | Gestructureerde data | Verborgen code voor machines. Zo check je het: [gestructureerde-data.md](gestructureerde-data.md) |
| 2 | Leesbaar voor AI | Duidelijke koppen, een antwoord in één zin, de prijs en de basisfeiten op de pagina |
| 3 | Vermeldingen door anderen | Reviews, vergelijkingssites, pers, fora |
| 4 | Echt genoemd in AI-antwoorden | Je Live Query |
| 5 | Autoriteit | Expertise, eigen cijfers, erkenning |
| 6 | Zoeken op de merknaam | Vindt Google of de AI het bedrijf als je de naam typt? |

**Totaal op 18:** 0–6 onzichtbaar · 7–11 marginaal · 12–15 aanwezig · 16–18 goed.

**Voorbeeld: Artevelde, bachelor International Business Management, 12/18**

| Criterium | Score en bewijs |
|---|---|
| 1 · Gestructureerde data | 3 · `EducationalOccupationalCredential / Course / FAQPage` |
| 2 · Leesbaar voor AI | 2 · "Engelstalig" staat bovenaan, de prijs staat niet op de pagina |
| 3 · Vermeldingen door anderen | 2 · op vergelijkingssites, weinig reviews of pers |
| 4 · Echt genoemd door AI | 1 · in de les: 0 pagina's van artevelde.be gelezen |
| 5 · Autoriteit | 2 · erkende hogeschool |
| 6 · Zoeken op de merknaam | 2 · bekend in Vlaanderen, niet bij wie in het Engels zoekt |

Sterk op wat Artevelde zelf maakt. Zwak op wat anderen schrijven. Een sterke audit eindigt niet met een score, maar met een tactiek: wat moet dit bedrijf als eerste doen?

## Je post

Bestand: `posts/week-06.md`. Volgende week neem je ook pitch 1 op: deze post is bewust licht.

```markdown
# Week 6: <titel in je eigen woorden>

## Mijn live query
<Je tabel: drie runs (eigen AI 2×, Google AI-modus 1×). Wie had er moeten staan? Je zin: waarom die wel, en die niet?>

## Kan AI dit bedrijf vinden?
<Je GEO-audit van één bedrijf: zes criteria, score en bewijs per criterium, je totaal op 18, en één tactiek.>

## Mijn tool leest een bron
<Welk document, en waarom. Je score: x op 5. Eén geval waar het fout ging, en waarom denk je?>
```

In je pull request: `build/bronnen/` en `build/test-set-bron.md`.

**Peer review.** Je reviewt de post van een klasgenoot, zoals altijd. Open ook het dashboard uit diens post van week 5. Schrijf één zin over hoe het eruitziet.

Indienen: typ `dien week 6 in`. Deadline: **dinsdag 24 november, 23:59**.

## Klaar als

- [ ] Je Live Query heeft drie runs, met de pagina's die de AI las.
- [ ] De rijen "kenner", "wie ontbreekt" en "run 2 en Google" zijn ingevuld.
- [ ] Je zin "waarom die wel, en die niet" staat in je post.
- [ ] Je GEO-audit heeft per criterium een score én bewijs, een totaal en een tactiek.
- [ ] Criterium 1 noemt de URL die je testte en de namen die je zag.
- [ ] `build/bronnen/` heeft één echt document.
- [ ] `build/test-set-bron.md` heeft B01–B05, de antwoorden geschreven vóór de run, en een score x op 5.
- [ ] Je peer review heeft één zin over het dashboard van je klasgenoot.
