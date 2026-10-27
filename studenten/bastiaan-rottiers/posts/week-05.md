# Week 5: Wat we nog moeten doen

## Mijn foutmarge

Mijn laatste prompt v7 en de gereconstrueerde v6 draaiden elk drie rondes op dezelfde vijf inputs: T06–T10, met GPT-6.1 Sol medium. v6 haalde 2/5, 2/5 en 3/5; v7 haalde 3/5, 3/5 en 4/5. De bereiken overlappen bij 3/5. Ik trek de algemene verbeterclaim daarom in als bewezen verbetering. Bij T10 gaf v7 wel vaker de gewenste eindstatus. T08 bevat een tegenstrijdigheid tussen input en verwacht antwoord; die is genoteerd, zonder de antwoorden achteraf aan te passen. Ik keek T07 en T10 zelf na.

## Model en effort

Mijn gok was dat Astra medium het best scoorde en Luna low goed genoeg was. Eén ronde per setup, n = 5, gaf Sol medium 4/5, Luna low 2/5 en Astra medium 4/5. Bij dezelfde inputraming kosten ze ongeveer €0,049, €0,0024 en €0,242 per taak. Luna valt onder mijn foutmarge; Sol en Astra vallen erin. Ik kies Sol medium: dezelfde score als Astra tegen een lagere kost.

## Mijn value chain, met de foutmarge erin

Handmatig lezen, begrijpen en bepalen wat nog moet gebeuren kost volgens mijn schatting 30 minuten. Draaien en nakijken samen kosten 4 minuten; de losse stappen zijn nog niet gemeten. v7 had gemiddeld 10/15 juiste antwoorden. Met 30 minuten herstel per fout komt er gemiddeld 10 minuten bij: 14 minuten tooltijd, dus 16 minuten winst per taak.

Bij acht taken per maand zijn dat 96 taken en 25,6 uur per jaar. Aan mijn eigen tijdwaarde van €20 is dat €512. De nieuwe Sol-tokenmeting geeft zonder cachekorting circa €0,032 per taak, of €3,08 per jaar. Netto blijft ongeveer €509 over, met bereik €445–€637.

Een apart werkgeversscenario gebruikt €20 bruto × 1,5 = €30 per uur: netto ongeveer €765, bereik €669–€957. Dit is een loonaanname. Mijn zwakste cijfer blijft de handwerktijd: bij 15 minuten daalt het gemiddelde netto aan €20 tijdwaarde naar €189.

## Mijn dashboard

[Mijn publieke dashboard](https://raw.githack.com/BastiaanRottiers/advanced-ai-nl/week-05/studenten/bastiaan-rottiers/build/dashboard.html). Bekijk eerst de overlappende scorebereiken. Mijn volgende gebruik wordt vooral het nalezen van financieel plan en marktonderzoek, ook zonder Canvas-opdracht; daarvoor zijn nieuwe praktijkgevallen nodig.

## Mijn AI-ismen

**Week 2:**
> Dit toont dat een taalmodel vaak dingen verzint omdat het denkt dat je daar naar op zoek bent, terwijl je die instructie niet gaf.

Herschreven: Bij T01 verzon de eerste run onder andere een ritssluiting, een logo en een QR-code die niet in mijn input stonden.

**Week 3:**
> Ook de buurtest maakte duidelijk dat de context nog niet scherp genoeg was.

Herschreven: Mijn broer las alleen de prompt, beantwoordde drie inputs en miste velden in de uitvoer.

**Week 3:**
> De testset helpt mij om niet alleen te kijken of een antwoord goed klinkt, maar ook of elk onderdeel werkelijk uit mijn eigen input komt.

Herschreven: Bij T01 stonden vilt en klikgespen in het antwoord, hoewel ik die niet had opgegeven.

**Week 4:**
> De tool is dus niet foutloos, maar de testset toont wel dat ik fouten kan vinden, een oorzaak kan benoemen en daarna gericht kan verbeteren.

Herschreven: In week 4 waren tien van de veertien beoordeelde antwoorden juist.

**Week 4:**
> Hij helpt mij niet alleen tijd winnen, maar geeft ook het team eenzelfde overzicht van wat we al hebben en wat er nog ontbreekt.

Herschreven: Bij ons financieel plan wil ik laten nakijken wat al ingevuld is en wat we nog moeten doen.
