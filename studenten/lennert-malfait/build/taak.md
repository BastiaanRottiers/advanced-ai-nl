# Taak — Outlook-berichtclassificatie

Classificeer één Outlook-bericht voor Lennert in precies één label:

- `doen`: ik moet een concrete vervolgactie uitvoeren;
- `lezen`: relevante informatie die ik moet lezen, zonder vereiste actie;
- `negeren`: geen actie of aandacht nodig;
- `herhaling`: een overbodige tweede kopie van hetzelfde bericht, zonder nuttige nieuwe informatie.

Input: één e-mailbericht en, alleen bij een mogelijke dubbele e-mail, het eerdere bericht.

Output: één JSON-object met precies één label.

Bij twijfel mag de tool geen feiten verzinnen en kiest hij het best passende label op basis van de aanwezige informatie.
