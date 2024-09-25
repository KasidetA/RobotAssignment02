*** Keywords ***
Input name in Delivery info
    [Arguments]    ${name}
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_name}        ${name}

Input surName in Delivery info
    [Arguments]    ${surname}    
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_surName}     ${surname}

Input address in Delivery info
    [Arguments]     ${address}
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_address}     ${address}

Input phone in Delivery info
    [Arguments]    ${phone}
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_phone}       ${phone} 

Input email in Delivery info
    [Arguments]    ${email}  
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_email}       ${email}
    
Click Pay button
    SeleniumLibrary.Click Button    ${cart_locator.pay_btn}