# Kosten — Vincent Pots

Datum: 14 oktober 2026
Koers: 1 dollar = 0,90 euro (aanname)
Model: `claude-haiku-5-5` (niet Haiku 4.5 uit de tabel van de README)
Prijs Haiku 5.5: $0,10 per miljoen input-tokens, $0,50 per miljoen output-tokens (cache lezen $0,01). Bron: derde partijen (Artificial Analysis, VentureBeat, MarkTechPost), nog niet op de officiële pagina gecontroleerd.

| Model | Context (`/context`) | Totaal (`/cost`) | Jouw deel | Kost per run | Per maand, jouw volume | 10× | 1.000× |
|---|---:|---:|---:|---:|---:|---:|---:|
| Haiku 5.5 | | | | $0,0039 (± €0,0035) | $0,078 (± €0,07) | $0,78 (± €0,70) | $78 (± €70) |
| Sonnet 5.5 (berekend) | | | | $0,078 (± €0,07) | $1,56 (± €1,40) | $15,60 (± €14) | $1.560 (± €1.400) |

## Sonnet 5.5: hoe berekend
- Niet gemeten, maar geschaald: Sonnet 5.5 kost op input en output 20× zoveel als Haiku 5.5 (2 en 10 dollar tegenover 0,10 en 0,50 per miljoen tokens, uit de tabel van de README en de prijs hierboven). Dus kost per run = 20 × $0,0039 = $0,078.
- Voorbehoud 1: deze verhouding klopt alleen als de prijs van Haiku 5.5 klopt, en die komt uit derde partijen. Is die prijs anders, dan verandert ook de verhouding.
- Voorbehoud 2: ik ga ervan uit dat Sonnet evenveel tokens gebruikt als Haiku. Sonnet kan anders denken. Voor een echt cijfer: dezelfde meting draaien met `/model sonnet`.

## Hoe gemeten
- Meting 1: nieuwe sessie, `/model haiku`, bericht "hoi", `/cost` gaf $0,0003 (2,6k input, 25 output).
- Meting 2: prompt + T01 in één bericht, `/cost` gaf $0,0042 (eerder genoteerd als $0,0041).
- Kost per run = meting 2 − meting 1 = $0,0039. Dit is jouw deel: prompt, input en antwoord.

## Volume
20 runs per maand = 5 dagen per week × 4 weken. Bron: schatting van mijn eigen gebruik (elke werkdag deadlines checken), niet geteld.

## Nog open
- Tokens van meting 2 (input en output) invullen, zodat Totaal en Jouw deel in tokens kloppen.
- Prijs van Haiku 5.5 op de officiële pagina controleren: platform.claude.com/docs/en/about-claude/pricing.
- Controleren of de prijs klopt met meting 2: bij $0,10 per miljoen input-tokens komt $0,0039 neer op ongeveer 39.000 input-tokens. Meting 1 (2,6k input, $0,0003) klopt wel met die prijs. Dus de tokens van meting 2 zijn nodig om dit te verklaren.
- Een ander model met hetzelfde volume doorrekenen (ronde 2, stap 4).
