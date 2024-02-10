*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Log in Wikipedia
    Open Browser  https://pl.wikipedia.org   chrome
    sleep   1
    click element  id:pt-login-2
    sleep   1
    input text  id:wpName1  RobotTests
    input text   id:wpPassword1   RobotFramework
    sleep   3
    click button    id:wpLoginAttempt
    sleep   3
    Close Browser