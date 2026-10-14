# Testset — AI Lead Intake Checker

Minstens 3 van de 10 cases moeten lastig zijn, bijvoorbeeld: vaag, heel kort, in een andere taal, of een geval waar onzekerheid/NEEDS_INFO logisch kan zijn.

## Testcase 1

### Input
Naam: Lina
E-mailadres: lina@studioluna.be
Bedrijf: Studio Luna
Bericht of automatisatievraag: Ik wil nieuwe aanvragen van mijn website automatisch in mijn CRM laten 
zetten en daarna een bevestigingsmail sturen.

### Verwachte status
READY
NEEDS_INFO
INVALID

### Waarom dit het juiste antwoord is

### Run 1
READY

### Foutklasse
Geen fout

### Run 2

## Testcase 2

### Input
Naam:
E-mailadres: info@beautyflow.be
Bedrijf: BeautyFlow
Bericht of automatisatievraag: Ik wil dat nieuwe afspraken automatisch in mijn agenda komen en dat klanten meteen een bevestigingsmail krijgen.

### Verwachte status
READY
NEEDS_INFO
INVALID

### Waarom dit het juiste antwoord is

### Run 1
NEEDS_INFO

### Foutklasse
Geen fout

### Run 2

## Testcase 3

### Input
Naam: Jonas
E-mailadres:
Bedrijf: JN Consulting
Bericht of automatisatievraag: Ik wil automatisch opvolgmails sturen naar leads die een formulier op mijn website invullen.

### Verwachte status
INVALID

### Waarom dit het juiste antwoord is

### Run 1
INVALID

### Foutklasse
Geen fout

### Run 2

## Testcase 4

### Input
Naam: Amira
E-mailadres: amira@novabeauty.be
Bedrijf: Nova Beauty
Bericht of automatisatievraag: Ik wil iets met AI automatiseren voor mijn bedrijf.

### Verwachte status
NEEDS_INFO

### Waarom dit het juiste antwoord is
De automatisatievraag is te vaag en moet verder verduidelijkt worden.

### Run 1
NEEDS_INFO

### Foutklasse
Geen fout

### Run 2

## Testcase 5

### Input
Naam: Michael
E-mailadres: michael@brightmedia.com
Bedrijf: Bright Media
Bericht of automatisatievraag: I want new leads from my website to be automatically added to my CRM and receive a follow-up email.

### Verwachte status
READY

### Waarom dit het juiste antwoord is
De naam, het e-mailadres en een duidelijke automatisatievraag zijn aanwezig.

### Run 1
READY

### Foutklasse
Geen fout

### Run 2

## Testcase 6

### Input
Naam: Sophie
E-mailadres: sophie@
Bedrijf: Flow Studio
Bericht of automatisatievraag: Ik wil automatisch een herinnering sturen naar klanten die hun afspraak nog niet bevestigd hebben.

### Verwachte status
INVALID

### Waarom dit het juiste antwoord is
Het e-mailadres is niet bruikbaar, dus de lead kan niet betrouwbaar opgevolgd worden.

### Run 1
INVALID

### Foutklasse
Geen fout

### Run 2

## Testcase 7

### Input
Naam: Noor
E-mailadres: noor@flowly.be
Bedrijf: Flowly
Bericht of automatisatievraag: Help me automate.

### Verwachte status
NEEDS_INFO

### Waarom dit het juiste antwoord is
De vraag is te kort en onduidelijk om te weten wat er precies geautomatiseerd moet worden.

### Run 1
NEEDS_INFO

### Foutklasse
Geen fout

### Run 2

## Testcase 8

### Input
Naam: Test User
E-mailadres: test@test.com
Bedrijf: Test
Bericht of automatisatievraag: asdfghjkl 123 test test

### Verwachte status
INVALID

### Waarom dit het juiste antwoord is
De input is duidelijk testdata en bevat geen echte automatisatievraag.

### Run 1
INVALID

### Foutklasse
Geen fout

### Run 2

## Testcase 9

### Input
Naam: Elias
E-mailadres: elias@gmail.com
Bedrijf:
Bericht of automatisatievraag: Ik wil dat nieuwe leads van mijn contactformulier automatisch in een spreadsheet worden gezet.

### Verwachte status
READY

### Waarom dit het juiste antwoord is
De naam, het e-mailadres en een duidelijke automatisatievraag zijn aanwezig. Bedrijf is optioneel.

### Run 1
READY

### Foutklasse
Geen fout

### Run 2

## Testcase 10

### Input
Naam:
E-mailadres: hello@autoflow.be
Bedrijf: AutoFlow
Bericht of automatisatievraag: Ik wil automatisch offertes laten opvolgen als een klant na drie dagen nog niet gereageerd heeft.

### Verwachte status
NEEDS_INFO

### Waarom dit het juiste antwoord is
De automatisatievraag en het e-mailadres zijn duidelijk, maar de naam ontbreekt.

### Run 1
NEEDS_INFO

### Foutklasse
Geen fout

### Run 2

## Testcase 11

### Input
Naam: Tess
E-mailadres: tess@testlab.be
Bedrijf: TestLab Marketing
Bericht of automatisatievraag: Ik wil nieuwe leads uit mijn Facebook-advertenties automatisch in mijn CRM zetten en daarna een opvolgmail sturen.

### Verwachte status
READY

### Waarom dit het juiste antwoord is
De naam, het e-mailadres en een duidelijke automatisatievraag zijn aanwezig. Het woord "test" in de bedrijfsnaam of domeinnaam betekent niet automatisch dat het testdata is.

### Run 1

### Foutklasse

### Run 2

10 op 10 juist (n = 10, 1 run) = 100%.
