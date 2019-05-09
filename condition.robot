*** Settings ***
Library  BuiltIn
Library  Selenium2Library

*** Test Cases ***
Run-Keyword-If
    ${TYPE}=    Set Variable    CAT
    Run Keyword If    '${TYPE}' == 'DOG'    Log   Testing Variant 1
    Run Keyword If    '${TYPE}' == 'CAT'    Log   Testing Variant 2
    Run Keyword If    '${TYPE}' == 'Duck'   Log   Testing Variant 3

Run-Keyword-Ignore-Error
    @{item}    Create List 
    Run Keyword And Ignore Error    Should Be Empty    ${item}



