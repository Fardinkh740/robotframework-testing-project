*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://demowebshop.tricentis.com/login
${username}     Fkhan2021@example.com
${password}   Tst@1234

*** Test Cases ***

*** Test Cases ***

Login And Logout Test
    Open My Browser     ${SiteUrl}       ${Browser}
    Enter Username      ${username}
    Enter Password      ${password}
    Click SignIn
    Verify Successful Login
    Click Logout
    Verify Successful Logout
    Close My Browsers