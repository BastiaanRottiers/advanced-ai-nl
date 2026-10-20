# Kosten

Datum: 20 oktober 2026

| Model | Context (`/context`) | Totaal (`/cost`) | Jouw deel | Kost per run | Per maand, jouw volume | 10× | 1.000× |
|---|---:|---:|---:|---:|---:|---:|---:|
| Haiku 4.5 | 33,6k | 100,8k (2,4k in + 1,5k out + 80,2k cache read + 16,7k cache write) | 3,9k (2,4k in + 1,5k out) | $0,0099 (€0,0089) | 200 runs: $1,98 (€1,78) | 2.000 runs: $19,80 (€17,82) | 200.000 runs: $1.980 (€1.782) |

## Toelichting

- **Context:** gemeten met `/context` in een sessie buiten de repo, dus zonder `CLAUDE.md`, `context.md` en de cursusskills. In de repo is de context groter.
- **Jouw deel:** alleen de verse tokens, niet het totaal. Het totaal telt de context twee keer mee (twee requests), via cache read en cache write. Met "totaal − context" komt je op 67,2k, en dat is geen jouw deel.
- **Kost per run:** verse input 2,4k × $1/M + output 1,5k × $5/M = $0,0024 + $0,0075 = $0,0099. Prijzen uit de tabel van 14 oktober, koers 1 $ = 0,90 €.
- **Volume:** 10 runs per dag × 20 werkdagen = 200 runs per maand. Dat is een schatting, geen telling. 10× is 2.000 runs per maand, 1.000× is 200.000 runs per maand.
- **Gemeten kost van `/cost`:** $0,0051 voor de hele sessie, met Haiku 5.5 (`claude-haiku-5-5`) en de prijs die Claude Code zelf berekent. Dat is een ander model en een andere berekening dan de tabel, daarom verschilt het bedrag.
