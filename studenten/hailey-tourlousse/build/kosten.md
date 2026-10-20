# Costs

Measured on 2026-10-20 with Claude Haiku 4.5, through Claude Code in an empty folder, no tools. Average over 20 runs (10 reviews, 2 runs). 1 dollar = 0.90 euro (assumption).

## One run

| | Tokens |
|---|---:|
| Context (Claude Code's own instructions, measured with an empty question) | 3,522 |
| Total input per run (average) | 5,050 |
| My part, input: prompt + review | 1,528 |
| My part, output: the answer | 303 (of which 230 thinking) |

## Per month

Volume: 44 reviews in September 2026 (Booking 36, Google 6, TripAdvisor 2). Counted myself on 2026-10-20.

| Model | Context | Total | My part | Cost per run | Per month (44) | 10x (440) | 1,000x (44,000) |
|---|---:|---:|---:|---:|---:|---:|---:|
| Haiku 4.5 (measured) | 3,522 | 5,353 | 1,831 | €0.0027 | €0.12 | €1.21 | €120.50 |
| Sonnet 5.5 (calculated) | | | 1,831 | €0.0055 | €0.24 | €2.41 | €241.01 |
| Opus 5.5 (calculated) | | | 1,831 | €0.0110 | €0.48 | €4.82 | €482.01 |
| GPT-6 Luna (calculated) | | | 1,831 | €0.0003 | €0.01 | €0.12 | €12.05 |

Only Haiku was measured. The other models use Haiku's token counts with their own prices; their real token counts would differ a little.

The cache: Claude Code reported $0.0098 for all 20 runs together, much less than 20 × $0.0030. From the second run on, the context is read back from the cache, which costs a tenth. A company using the API pays for "my part" only.

## By hand or with the tool

| Link | Value | Source |
|---|---|---|
| By hand | Find the review on Booking 40 s · read 9 s · topic 5 s · reply 3 s · pass on 5 s = **62 s** | Did it myself at home |
| With the tool | Find the review 40 s · run 7 s · check 15 s · pass on 5 s = **67 s** | Run time measured (6.0, 7.3, 7.7 s); check time my estimate |
| Gain per review | 62 − 67 = **−5 s** | |
| Volume | 44 per month · 528 per year | Counted, September 2026 |
| Hours per year | −5 s × 528 = **−0.7 h** | |
| Hourly cost | **€17.50** | Gross hourly wage, I know it, checked with my brother who works at the hotel |
| Value | −0.7 × 17.50 = **−€12.83 per year** | |
| Tool cost | 528 × €0.0027 = **€1.45 per year** | Measured |
| Net | **−€14.28 per year** | |

Version B (future: reviews arrive in the tool automatically, the 40 s disappear): tool 27 s, gain 35 s, 5.1 h per year, net **€88.39 per year**.

Weakest number: the 15 s check. If it is half (7.5 s), the tool takes 59.5 s, gains 2.5 s per review, and the net becomes **€4.97 per year**.
