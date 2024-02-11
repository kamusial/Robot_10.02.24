*** Variables ***
${moj string}  grupa(po edycji versja 1.1)
@{moja lista}    piesek    kotek    drugi piesek    i kropka .
@{lista numerow}   1   2   3   4   5   6
&{moj slownik}    marchew=3   pietruszka=5    url=www.wikipedia.pl     lista=@{moja lista}
@{lista imion}   Weronika   Karolina   Marcin   Justyna
@{lista nazwisk}   Kowalski   Maliniowski   Znow kolwalski    kowalski-gorniak   Polak
@{tmp lista}   To do wyswietlenia   STDOUT    False   3

*** Test Cases ***
test1
    log to console   ${moj slownik.url} ${moj slownik.marchew} ${moj slownik.lista}[2]
#    log to console    Siema ${moj string} i juz
##    log to console    @{lista imion}
##    log to console    @{lista imion}[2]
#    log to console    ${lista imion}
#    log to console    ${lista imion}[2]
#    log to console   @{tmp lista}
    log to console   ${lista imion}
    log   moja lista ${lista imion}




