*** Keywords ***
Fill in Credit Card Details and Confirm Payment
    [Arguments]    ${creditcard}    ${exp}    ${cvc}    ${name}
    Fill card number in Credit Card Details         ${creditcard}  
    Fill expire date in Credit Card Details         ${exp}        
    Fill cvc in Credit Card Details                 ${cvc} 
    Fill card holder name in Credit Card Details    ${name} 
    Click ConfirmPayment