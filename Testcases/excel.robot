*** Settings ***
Library    OperatingSystem
Library    Collections

*** Variables ***
${DIRECTORY}    C:/Users/David/PycharmProjects/Testing_E-rechnung/TestData
${FILE_PATH}    ${DIRECTORY}/test_data.xlsx
*** Test Cases ***
Create Excel File in Specific Directory
    [Documentation]    Create an Excel file in a specific directory.

    # Ensure the directory exists
    Create Directory    ${DIRECTORY}

    # Import OpenPyXL and create an empty Excel file
    ${workbook}=    Evaluate    __import__('openpyxl').Workbook()

    # Correct way to save the file in Robot Framework
    Run Keyword    Evaluate    ${workbook}.save(r"${FILE_PATH}")    modules=openpyxl

    # Log success message
    Log To Console    Excel file created successfully at: ${FILE_PATH}