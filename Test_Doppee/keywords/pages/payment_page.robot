*** Keywords ***
Select payment method
    SeleniumLibrary.Click Button    ${payment_locator.next_btn}

Fill card number in credit card details
    [Arguments]    ${creditcard}    
    SeleniumLibrary.Input Text      ${payment_locator.card_number_container}    ${creditcard}

Fill expire date in credit card details    
    [Arguments]    ${exp}    
    SeleniumLibrary.Input Text      ${payment_locator.exp_container}    ${exp}

Fill cvc in credit card details 
    [Arguments]    ${cvc}
    SeleniumLibrary.Input Text      ${payment_locator.cvc_container}    ${cvc}

Fill card holder name in credit card details 
    [Arguments]    ${name}    
    SeleniumLibrary.Input Text      ${payment_locator.holder_name_container}    ${name} 

Click confirm payment
    SeleniumLibrary.Click Button    ${payment_locator.confirm_payment_btn}
    Wait and click element          ${payment_locator.ok_btn}