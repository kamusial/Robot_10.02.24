*** Settings ***

Library   RequestsLibrary

*** Test Cases ***
APT_GET_TEST
    ${get_odpowiedz}    GET   https://simple-books-api.glitch.me/status
    log to console      ${get_odpowiedz}