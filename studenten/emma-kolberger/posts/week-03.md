# Week 3 — Context engineering en mijn AI Lead Intake Checker

## Wat ontbrak er in mijn context?

Mijn AI Lead Intake Checker controleert leads voor een AI-automationbedrijf. De tool geeft elke aanvraag één van drie labels: READY, NEEDS_INFO of INVALID. Deze week heb ik gekeken naar de context die ik aan het model meegeef en naar de resultaten van mijn tests.

Mijn eerste prompt bevatte nog niet alle zes bouwstenen volledig. Er ontbraken voorbeelden en een duidelijke uitweg voor onduidelijke inputs. Daardoor stond er nog niet duidelijk genoeg in mijn context hoe het model met zulke aanvragen moest omgaan.

Ik heb daarom drie voorbeelden toegevoegd: één voor READY, één voor NEEDS_INFO en één voor INVALID. Ook heb ik een uitweg toegevoegd voor onduidelijke aanvragen. Daarnaast heb ik de regel rond INVALID verduidelijkt met een “want”. Zo staat er bij die regel ook een reden, in plaats van alleen een instructie.

## Mijn eerste cijfer

Mijn eerste vijf tests waren allemaal juist: **5 op 5 juist (n = 5, 1 run) = 100%**.

Daarna heb ik alle tien oorspronkelijke testcases getest. Ook daar gaf het model telkens het juiste label: **10 op 10 juist (n = 10, 1 run) = 100%**.

Omdat 10/10 waarschijnlijk betekent dat mijn testset te makkelijk was, heb ik een moeilijkere elfde testcase toegevoegd. Die bevatte een echt bedrijf en een e-mailadres waarin het woord “test” voorkwam. Het model gaf ook bij deze aanvraag correct READY.

Uiteindelijk kwam ik dus uit op **11 op 11 juist in Run 1**. Er waren geen F1-F6-fouten in deze run. Dat is mijn gemeten resultaat, maar het gaat nog steeds om één run. Ik heb hiermee nog niet getest of het model bij herhaling steeds hetzelfde juiste antwoord geeft.

## Eén wijziging

Mijn contextverbetering bestond uit het toevoegen van voorbeelden, een uitweg voor onduidelijke aanvragen en een duidelijke reden bij de INVALID-regel.

Na Run 1 had ik geen foute input om opnieuw te draaien. Daarom kan ik nog niet bewijzen dat één specifieke wijziging de score verbeterde. De score van 11/11 laat zien dat deze testcases in deze run goed gingen, maar toont geen gemeten verbetering door één aanpassing.

Mijn volgende stap is moeilijkere en ambiguere testcases maken. Daarnaast wil ik dezelfde inputs meerdere keren testen. Zo kan ik nagaan of mijn tool ook bij minder duidelijke aanvragen en bij herhaling het juiste label geeft.
