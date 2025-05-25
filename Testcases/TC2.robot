*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://demowebshop.tricentis.com/login
${username}     Fkhan2021@example.com

${password}   Test@1234

*** Test Cases ***

LoginTest
    Open My Browser     ${SiteUrl}       ${Browser}
    Enter Username      ${username}
    Enter Password      ${password}
    Click SignIn
    sleep   2s
    Verify Successfull login
    sleep   2s
    close my browsers