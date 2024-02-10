*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Log in Wikipedia
    Open Browser  https://pl.wikipedia.org   chrome
    sleep   1
    click element  id:pt-login-2
    sleep   1
    input text  locator=id:wpName1  text=RobotTests  clear=False
    input text   id:wpPassword1   RobotFramework  False
    sleep   3
    checkbox should not be selected  id:wpRemember
    select checkbox    id:wpRemember
    sleep  1
    click button    id:wpLoginAttempt
    input text   name:search   TEXTTTT
    press keys  name:search  ENTER
    click button    //*[@id="searchform"]/div/button
#    //*[@id="searchform"]/div/button
    sleep   1
    Close Browser