*** Settings ***
Resource    ../pages/import.robot


*** Keywords ***
Login
    [Arguments]    ${email}    ${password}
    Fill in an Email    ${email}
    Fill in password    ${password}
    Click login and ok_btn
