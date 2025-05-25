*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1 User RegistrationTest
    [Tags]    regression
    log to console    This is user reg test
    log to console    user reg test is over
TC2 LoginTest
    [Tags]    sanity
    log to console    This is Login test
    log to console    login test is over
TC3 change user setting
    [Tags]    regression
    log to console    This is changing user setting test
    log to console    changing user test is over
TC4 logout Test
    [Tags]    sanity
    log to console    This is logout test
    log to console    logout test is over