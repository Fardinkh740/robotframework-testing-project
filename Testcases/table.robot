*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Count Rows And Columns In Table
    Open Browser    https://www.w3schools.com/html/html_tables.asp    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//table    timeout=5s

    # Count number of rows
    ${row_count}    Get Element Count    xpath=//table[@id='customers']/tbody/tr
    Log To Console    Total Rows: ${row_count}

    # Count number of columns (using the first row)
    ${col_count}    Get Element Count    xpath=//table[@id='customers']/tbody/tr[1]/th | //table[@id='customers']/tbody/tr[1]/td
    Log To Console    Total Columns: ${col_count}


    Close Browser
