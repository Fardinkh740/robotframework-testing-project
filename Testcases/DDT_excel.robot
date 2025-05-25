*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/Mappe1.xlsx
Suite Setup    Start Browser
Suite Teardown    Close Browser
Test Template    Invalid Login  # Test template for data-driven testing

*** Test Cases ***
LoginTestWithExcel
    [Documentation]    Run login test for each user from the Excel file.

Empty Username Empty Password
    [Documentation]    Verify login with both username and password empty
    [Tags]    Login    NegativeTest
    Invalid Login    ${EMPTY}    ${EMPTY}


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username  ${username}
    Input password   ${password}
    click login button
    Error message should be visable

