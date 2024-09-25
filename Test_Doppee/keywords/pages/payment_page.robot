*** Keywords ***
Select Payment Method
    SeleniumLibrary.Click Button    ${payment_locator.next_btn}

Fill card number in Credit Card Details
    [Arguments]    ${creditcard}    
    SeleniumLibrary.Input Text      ${payment_locator.card_number_container}    ${creditcard}

Fill expire date in Credit Card Details    
    [Arguments]    ${exp}    
    SeleniumLibrary.Input Text      ${payment_locator.exp_container}    ${exp}

Fill cvc in Credit Card Details 
    [Arguments]    ${cvc}
    SeleniumLibrary.Input Text      ${payment_locator.cvc_container}    ${cvc}

Fill card holder name in Credit Card Details 
    [Arguments]    ${name}    
    SeleniumLibrary.Input Text      ${payment_locator.holder_name_container}    ${name} 

Click ConfirmPayment
    SeleniumLibrary.Click Button    ${payment_locator.confirm_payment_btn}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.ok_btn}      10s
    SeleniumLibrary.Click Button    ${payment_locator.ok_btn}
    Sleep   3