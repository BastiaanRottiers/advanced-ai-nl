# Audit prompt v1

Zet bij elke lijn het nummer van de bouwsteen: 1 rol en doel, 2 regels met waarom, 3 labels en vorm, 4 voorbeelden, 5 uitweg, 6 input.

| Lijn | Bouwsteen |
|---|---|
| Je helpt een powerliftingcoach. Lifters sturen een bericht in hun eigen woorden over wie ze zijn en hoe sterk ze zijn. Jij haalt de gegevens uit dat bericht, zodat de coach later hun niveau kan berekenen. | 1 |
| Haal deze velden uit het bericht: `geslacht`, `lichaamsgewicht`, `squat`, `bench`, `deadlift`, `total` (man/vrouw, kg) | 3 |
| Neem alleen over wat er letterlijk in het bericht staat. Reken niets uit. Want de coach rekent zelf, en een berekend getal ziet er even zeker uit als een vermeld getal. | 2 |
| Staat een veld er niet in, schrijf dan `"niet vermeld"`. Gok niet. | 5 |
| Het bericht kan in elke taal zijn. | 2 |
| Antwoord met alleen één regel JSON, zonder uitleg: `{"geslacht": "...", ...}` | 3 |
| Het bericht: `<bericht>{BERICHT}</bericht>` | 6 |

## Welk nummer ontbreekt?

4 ontbreekt.

## Eén regel herschreven met een want

Voor: "Gok niet."

Na: "Gok niet. Want dan kloppen de GL-points niet, en wordt de atleet overschat of onderschat."

