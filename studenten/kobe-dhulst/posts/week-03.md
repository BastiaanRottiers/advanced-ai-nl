# Week 3 — Woordkeuze is belangrijk

## Wat ontbrak er in mijn context?
Mijn tool sorteert schoolmails in vijf labels: dringend, later, info, negeren en onzeker. Vorige week ging één mail twee keer fout: een betalingsbevestiging van mijn inschrijvingsgeld (T05). Ik vond dat negeren, het model zei twee keer info. Ik dacht eerst dat het model fout was. Pas toen mijn AI mijn eigen prompt letterlijk naast de fout zette, zag ik dat het aan de prompt lag. Daar stond: "info: de mail bevat nuttige informatie, maar de student hoeft niets te doen." Een betalingsbevestiging past daar perfect in. Het model deed dus exact wat ik vroeg. Het verschil zat alleen in mijn hoofd: een bevestiging met een tijd en een plaats heb ik later nog nodig, een betaling is afgerond. Daaruit leerde ik dat het belangrijk is hoe je dingen precies verwoordt in de prompt.

Bij de buurtest las mijn buur alleen de prompt en koos ze bij drie mails hetzelfde label als ik. Ik zei in mijn uitleg niets wat niet in de prompt stond.

## Mijn eerste cijfer
Mijn testset heeft nu tien mails. De eerste vijf draaide ik vorige week met v1: 8 op 10 juist (n = 5, 2 runs). De vijf nieuwe draaide ik vandaag met v2: 4 op 5 juist (n = 5, 1 run). Ik tel die twee niet samen, want het zijn twee verschillende prompts.

Ik vind 4 op 5 goed, maar het zijn weinig mails en vaak dezelfde soort. Beide fouten zijn F1: het model gaf vol overtuiging het verkeerde label. Bij T05 zei het info in plaats van negeren (2×), bij T07, een verificatiecode van UNIZO, zei het later in plaats van dringend (1×), omdat er geen deadline in de mail stond. Wat opvalt: beide fouten komen doordat ik het fout verwoord had toen ik de prompt opstelde. Ik wist toen denk ik nog niet hoe belangrijk de woordkeuze is. Ik was wel zeer tevreden dat de drie "moeilijke" inputs (een Engelse mail, een mail met alleen een bijlage en een reclamemail) alle drie juist waren.

## Eén wijziging
Bij de audit van mijn prompt met de zes bouwstenen zag ik dat er geen voorbeelden in stonden en dat geen enkele regel een "want" had. Ik herschreef de regels voor info en negeren: info is iets wat ik later nog nodig heb, zoals een tijd, een plaats of met wie. Negeren is ook een bevestiging van iets wat al afgerond is, want daar heb ik later niets meer aan. Ik voegde ook drie voorbeelden toe: een dringende, een info en een negeren. Daarna draaide ik T05 opnieuw in een nieuw gesprek. Het model zei nu negeren, met bijna letterlijk mijn want als reden.

Dat is nog geen bewijs, omdat het maar één mail en één run was. En mijn nieuwe regel noemt zelf "een betaling", dus het is niet verrassend dat T05 nu juist is. Het echte bewijs is een andere afgeronde bevestiging die ik nog niet getest heb.
