*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://demowebshop.tricentis.com
${LOGIN_URL}      https://demowebshop.tricentis.com/login
${REGISTER_URL}   https://demowebshop.tricentis.com/register
${BROWSER}        Chrome

${FIRSTNAME}      Test
${LASTNAME}       User
${EMAIL}          Fkhan2021@example.com
${PASSWORD}       Test@1234

${INVALID_EMAIL}      DonaldTrump_MAGA2025@example.com
${INVALID_PASSWORD}   WrongPass123

*** Test Cases ***
Login With Registered User
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=Email

    Input Text    id=Email    ${EMAIL}
    Input Text    id=Password    ${PASSWORD}
    Click Button    xpath=//input[@value='Log in']
    sleep   2s
    Wait Until Page Contains Element    xpath=//a[text()='Log out']
    Log    ✅ Login erfolgreich
    sleep    2s
    Close Browser

Login With Invalid Credentials
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=Email
    Input Text    id=Email    ${INVALID_EMAIL}
    Input Text    id=Password    ${INVALID_PASSWORD}
    Click Button    xpath=//input[@value='Log in']
    Wait Until Element Is Visible    xpath=//div[@class='message-error validation-summary-errors']
    Element Should Contain    xpath=//div[@class='message-error validation-summary-errors']    Login was unsuccessful
    Log    ✅ Fehler bei ungültigem Login korrekt angezeigt
    Close Browser
