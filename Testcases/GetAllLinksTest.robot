*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demowebshop.tricentis.com/books
${BROWSER}    Chrome

*** Test Cases ***
Count All Links On Books Page
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    //a    timeout=5s
    ${link_count}    Get Element Count    xpath=//a
    Log To Console    Total Links: ${link_count}
    Close Browser



