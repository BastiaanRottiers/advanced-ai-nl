# Week 3 — Mijn recepten-tool testen met foto's

## Wat ontbrak er in mijn context?

In mijn oorspronkelijke prompt was niet duidelijk genoeg aangegeven dat de tool alleen ingrediënten mocht gebruiken die echt zichtbaar waren op de foto. Daardoor nam de tool bij T05 (aardappelsalade met ei) aan dat maïs, mayonaise en citroensap aanwezig waren, terwijl die niet op de foto stonden. Hierdoor stelde hij onterecht ook koude pastasalade met mozzarella voor.

Om dit te verbeteren, heb ik een extra regel toegevoegd die zegt dat ingrediënten die niet duidelijk zichtbaar zijn als ontbrekend moeten worden beschouwd. Bij de nieuwe test werkte dit: de tool stelde alleen nog aardappelsalade met ei voor.

## Mijn eerste cijfer

Uit mijn eerste score van 7 op 10 leerde ik dat mijn prompt al redelijk goed werkte, maar nog niet betrouwbaar genoeg was. Bij twee tests vergat de tool een recept te vermelden dat wel mogelijk was met één of twee ontbrekende ingrediënten (F3). Bij een andere test verzon de tool ingrediënten die niet op de foto stonden (F2). Hierdoor besefte ik dat de tool niet alleen de receptenlijst goed moet controleren, maar ook nauwkeurig moet kijken welke ingrediënten echt zichtbaar zijn op de foto. Zo kan ik voorkomen dat de tool verkeerde recepten voorstelt of mogelijke recepten overslaat.

Ik heb mijn tien testfoto’s gekozen door verschillende situaties uit te proberen. Bij sommige foto's waren alle ingrediënten aanwezig, bij andere ontbraken één of twee ingrediënten en bij nog andere was geen enkel recept mogelijk. Ik heb ook een expres wazige foto gemaakt om te testen hoe de tool omgaat met onduidelijke ingrediënten. Mijn eindscore van 17 op 20 toont aan dat mijn tool meestal goed werkt en dat de aanpassing geholpen heeft, maar dat er nog altijd fouten kunnen voorkomen. Daarom vind ik dat de tool nog verder getest en verbeterd moet worden om betrouwbaarder te worden.

## Eén wijziging

Eén geslaagde hertest bewijst nog niet dat mijn tool altijd betrouwbaar werkt, omdat ik maar één specifieke situatie opnieuw heb getest. Bij andere foto's of ingrediënten kan de tool nog steeds fouten maken. Daarom is het belangrijk om meerdere verschillende tests uit te voeren en de resultaten te vergelijken. Zo kan ik controleren of mijn wijziging ook in andere situaties goed werkt en niet alleen bij T05.

Wat ik het moeilijkst vond, was ervoor zorgen dat alle ingrediënten duidelijk zichtbaar waren op de foto's, zodat de tool ze correct kon herkennen. Het meest verrassende vond ik dat de tool soms recepten vergat of ingrediënten verzon, zelfs wanneer ik duidelijke instructies had gegeven. Hierdoor heb ik geleerd dat een goede prompt niet automatisch betekent dat de tool altijd het juiste antwoord geeft en dat testen dus heel belangrijk is.
