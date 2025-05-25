*** Settings ***
Library    SeleniumLibrary

Variables    ../PageObjects/Locators.py


*** Keywords ***
Open My Browser
    [Arguments]    ${SiteUrl}       ${Browser}
    open browser    ${SiteUrl}       ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]     ${username}
    Input Text      ${text_loginUserName}   ${username}
Enter Password
    [Arguments]     ${password}
    Input Text      ${text_loginPassword}   ${password}

Click SignIn
    Click button    ${btn_signIn}

Verify Successfull login
    Title Should Be     Demo Web Shop
close my browsers
    close all browsers

Click Logout
    Click Element    xpath=//a[text()='Log out']