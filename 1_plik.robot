*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${wikipedia login}   RobotTests
${proper password}   RobotFramework
${not proper password}   12345

*** Keywords ***
Login to wikipedia
    [Arguments]  ${moj login}  ${moje haslo}
    Open Browser  https://pl.wikipedia.org   chrome  #executable_path=C:\Users\vdi-student\Desktop\Robot_10.02.24
    run keyword and ignore error   click element   id:L2AGLb
    wait until element is visible    id:pt-login-2   timeout=5
#    sleep   1
    click element  id:pt-login-2
#    sleep   1
    input text  locator=id:wpName1  text=${moj login}  clear=False
    input text   id:wpPassword1   ${moje haslo}  False
#    sleep   3
    checkbox should not be selected  id:wpRemember
    select checkbox    id:wpRemember
#    sleep  1
    click button    id:wpLoginAttempt

*** Test Cases ***
Successful login
    Login to wikipedia   ${wikipedia login}  ${proper password}
    wait until element is visible  xpath://*[@id="ca-nstab-project"]/a/span   5

Unsuccessful login
    Login to wikipedia  ${wikipedia login}   ${not proper password}
#dalsza czesc kodu



Find in Wikipedia
    Login to wikipedia
    input text   name:search   o co z bitcoinem chodzi
    press keys  name:search  ENTER
#    click button    //*[@id="searchform"]/div/button
#    sleep   1
    Close Browser