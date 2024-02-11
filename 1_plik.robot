*** Settings ***
Library     SeleniumLibrary
Test Setup      Open Browser  https://pl.wikipedia.org   chrome
Test Teardown   close browser

*** Variables ***
${wikipedia login}   RobotTests
${proper password}   RobotFramework
${not proper password}   12345
${error_message}   Wystąpił problem z wprowadzonymi danymi

*** Keywords ***
Login to wikipedia
    [Arguments]  ${moj login}  ${moje haslo}
    run keyword and ignore error   click element   id:L2AGLb
    wait until element is visible    id:pt-login-2   timeout=5
#    sleep   1
    click element  id:pt-login-2
#    sleep   1
    input text  locator=id:wpName1  text=${moj login}  clear=False
    input password   id:wpPassword1   ${moje haslo}  False
#    sleep   3
    checkbox should not be selected  id:wpRemember
    select checkbox    id:wpRemember
#    sleep  1
    click button    id:wpLoginAttempt

*** Test Cases ***
Successful login
    Login to wikipedia   ${wikipedia login}  ${proper password}
    sleep  2
    wait until element is visible  xpath://*[@id="ca-nstab-project"]/a/span   5

U n
    Login to wikipedia  ${wikipedia login}   ${not proper password}
    sleep  3
    ${my_message}   get text  xpath://*[@id="userloginForm"]/form/div[1]/div
    Should Be Equal As Strings    ${my_message}       ${error_message}

Find in Wikipedia
    input text   name:search   o co z bitcoinem chodzi
    press keys  name:search  ENTER
#    click button    //*[@id="searchform"]/div/button
#    sleep   1
