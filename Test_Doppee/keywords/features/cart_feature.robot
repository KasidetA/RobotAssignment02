*** Settings ***
Resource    ../pages/import.robot


*** Keywords ***
Fill in Delivery info and Start Payment Process
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${email}
    Wait Until Element Is Visible       ${cart_locator.input_txt_name}
    Input email in Delivery info        ${email}
    Input name in Delivery info         ${name}
    Input surName in Delivery info      ${surname}
    Input address in Delivery info      ${address}
    Input phone in Delivery info        ${phone}
    
    Click Pay button
