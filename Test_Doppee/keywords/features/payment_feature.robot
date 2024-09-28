*** Keywords ***
Fill in Credit Card Details and Confirm Payment
    [Arguments]    ${creditcard}    ${exp}    ${cvc}    ${name}
    payment_page.Fill card number in credit card details         ${creditcard}  
    payment_page.Fill expire date in credit card details         ${exp}        
    payment_page.Fill cvc in credit card details                 ${cvc} 
    payment_page.Fill card holder name in credit card details    ${name} 
    payment_page.Click confirm payment