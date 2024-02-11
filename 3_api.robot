*** Settings ***
Library   RequestsLibrary

*** Variables ***
&{regisatration_data}    clientName=Kamil    clientEmail=mojemail@wp.pl

*** Test Cases ***
APT_GET_TEST
    ${get_odpowiedz}    GET   https://simple-books-api.glitch.me/status
    log to console      ${get_odpowiedz.json()}

    ${POST_register_odpowedz}    POST    https://simple-books-api.glitch.me/api-clients/

