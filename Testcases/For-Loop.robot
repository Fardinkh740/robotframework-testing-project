*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Forloop1
    FOR    ${i}    IN RANGE    1   10
    log to console    ${i}
    END

Forloop2withlist
    @{item}   Create List   1   2   3   4   5   6
    FOR    ${i}    IN    @{item}
        Log To Console    ${i}
        IF    ${i} == 3    BREAK
    END

Forloop3
    FOR    ${i}    IN   david fardin zess
    log to console    ${i}
    END

Forloop4
     @{item}   Create List   david   fardin   zess
    FOR    ${i}    IN    @{item}
        Log To Console    ${i}
        IF    '${i}' == 'fardin'    BREAK
    END
