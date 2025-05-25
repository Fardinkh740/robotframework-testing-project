*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${URL}    https://demowebshop.tricentis.com
${LOGIN_URL}    https://demowebshop.tricentis.com/login
${BROWSER}    Chrome

*** Keywords ***
Start Browser
    Open Browser    ${LOGIN_URL}     ${BROWSER}
    Maximize Browser Window

Close browser
    close all browsers

Open Login Page
    go to    ${LOGIN_URL}

Input username
    [Arguments]    ${username}
    input text    id:Email   ${username}

Input password
    [Arguments]    ${password}
    input text    id:Password   ${password}

click login button
    click element   xpath:/html/body/div[4]/div[1]/div[4]/div[2]/div/div[2]/div[1]/div[2]/div[2]/form/div[5]/input

Error message should be visable
    page should contain    Login was unsuccessful. Please correct the errors and try again.

