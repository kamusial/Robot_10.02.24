*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Log in Wikipedia
    Open Browser  https://pl.wikipedia.org   chrome
    sleep   1
    click element  id:pt-login-2
    sleep   3
    Close Browser