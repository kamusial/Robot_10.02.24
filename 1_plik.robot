*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${wikipedia login}   RobotTests
${proper password}   RobotFramework
${not proper password}   12345

*** Keywords ***
Login to wikipedia
    Open Browser  https://pl.wikipedia.org   chrome  #executable_path=C:\Users\vdi-student\Desktop\Robot_10.02.24
    run keyword and ignore error   click element   id:L2AGLb
    wait until element is visible    id:pt-login-2   timeout=5
#    sleep   1
    click element  id:pt-login-2
#    sleep   1
    input text  locator=id:wpName1  text=${wikipedia login}  clear=False
    input text   id:wpPassword1   ${proper password}  False
#    sleep   3
    checkbox should not be selected  id:wpRemember
    select checkbox    id:wpRemember
#    sleep  1
    click button    id:wpLoginAttempt
    capture page screenshot
    wait until element is visible  id:vector-user-links-dropdown-checkbox   5


*** Test Cases ***
Find in Wikipedia
    Login to wikipedia
    input text   name:search   TEXTTTT
    press keys  name:search  ENTER
#    click button    //*[@id="searchform"]/div/button
#    sleep   1
    Close Browser