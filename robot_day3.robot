*** Settings ***
Library  BuiltIn
Library  SeleniumLibrary
Resource  file_resource/Variables.robot
Resource  file_resource/Keywords.robot

*** Test Cases ***
เทสส่งค่าไปที่คีย์เวิร์ด
  Hello Name  Kachain

Run-Keyword-If
    ${TYPE}=    Set Variable    V1
    Run Keyword If    '${TYPE}' == 'V1'    Log To Console    Testing Variant 1
    Run Keyword If    '${TYPE}' == 'V2'    Log To Console   Testing Variant 2
    Run Keyword If    '${TYPE}' == 'V3'    Log To Console   Testing Variant 3

Run-Keyword-Ignore-Error
    @{CAPTAINS}    Create List    Picard    Kirk    Archer
    Run Keyword And Ignore Error    Should Be Empty    ${CAPTAINS}
