*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary




*** Test Cases ***
TC1
    ${document}    Create Excel Document    C:/excelsmp.xlsx
    Should Be Equal As Strings    C:/excelsmp.xlsx    ${document}
*** Keywords ***
*** Variables ***
