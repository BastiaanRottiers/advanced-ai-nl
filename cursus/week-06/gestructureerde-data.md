# Gestructureerde data checken

Voor criterium 1 van je GEO-audit.

Gestructureerde data is verborgen code op een webpagina. Ze vertelt een machine in vaste velden wat er op de pagina staat: "dit is een opleiding", "dit is de prijs", "dit zijn de veelgestelde vragen". Een AI kan die velden lezen zonder de hele pagina te begrijpen.

## Zo check je het

1. Open de pagina van het **product of de dienst**, niet de homepage. Dus de pagina van één opleiding, één product of één behandeling.
2. Kopieer de URL en plak hem in **[validator.schema.org](https://validator.schema.org)**. Klik op *Test uitvoeren*.
3. Kijk alleen naar de **rechterkant**, onder *Gedetecteerd*. De code links mag je negeren.
4. Lees de **namen** op elke kaart. Staan er meerdere op één kaart, dan staat er een schuine streep tussen: `Course / FAQPage`. Het aantal items telt niet.
5. Klik een kaart open om te zien wat erin staat, bv. de vragen en antwoorden van een FAQ.

Gebruik niet de *Rich Results Test* van Google. Die toont alleen wat Google in zijn eigen zoekresultaten gebruikt, en zegt vaak "geen items" terwijl er wel gestructureerde data is.

## Geef een score

| Score | Wat je ziet | Voorbeelden |
|---|---|---|
| 0 | *Geen items gedetecteerd* | |
| 1 | Alleen wie het bedrijf is | `Organization`, `WebSite`, `BreadcrumbList` |
| 2 | Wat het bedrijf verkoopt | `Product`, `Course`, `Service`, `LocalBusiness` met adres |
| 3 | Wat het verkoopt **én** antwoorden op klantvragen | `FAQPage`, een prijs (`Offer`), openingsuren, reviews |

## Voorbeeld

De pagina van de bachelor Bedrijfsmanagement aan Artevelde toont:

- `EducationalOccupationalCredential / Course / FAQPage`
- `VideoObject`

`Course` is het product, `FAQPage` beantwoordt klantvragen. **Score 3.** De homepage van Artevelde toont niets: score 0. Daarom test je de pagina van het product.

## In je post

Schrijf drie dingen: de URL die je testte, de namen die je zag, en je score.

> Criterium 1: 3/3. https://www.arteveldehogeschool.be/nl/opleidingen/bachelor/bedrijfsmanagement toont `EducationalOccupationalCredential / Course / FAQPage` en `VideoObject`.
