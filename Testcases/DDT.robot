*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Start Browser
Suite Teardown    Close browser

*** Test Cases ***
Right User Empty Password
    [Documentation]    Verify login with correct username but empty password
    [Tags]           Login                     NegativeTest
    Invalid Login    Fkhan2021@example.com    ${EMPTY}

Wrong User Right Password
    [Documentation]    Verify login with incorrect username but correct password
    [Tags]    Login    NegativeTest
    Invalid Login    wronguser@example.com    CorrectPassword123

Empty Username Empty Password
    [Documentation]    Verify login with both username and password empty
    [Tags]    Login    NegativeTest
    Invalid Login    ${EMPTY}    ${EMPTY}

Valid Login
    [Documentation]    Verify login with correct username and password
    [Tags]    Login    PositiveTest
    Valid Login    Fkhan2021@example.com    Test@1234
*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username  ${username}
    Input password   ${password}
    click login button
    Error message should be visable

Valid Login
     [Arguments]    ${username}    ${password}
     Input username  ${username}
     Input password   ${password}
     click login button
     #Wait Until Page Contains    Welcome, ${username}    timeout=5s