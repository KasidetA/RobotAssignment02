*** Keywords ***
Input name in delivery info
    [Arguments]    ${name}
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_name}        ${name}

Input surname in delivery info
    [Arguments]    ${surname}    
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_surName}     ${surname}

Input address in delivery info
    [Arguments]     ${address}
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_address}     ${address}

Input phone in delivery info
    [Arguments]    ${phone}
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_phone}       ${phone} 

Input email in delivery info
    [Arguments]    ${email}  
    SeleniumLibrary.Input Text      ${cart_locator.input_txt_email}       ${email}
    
Click pay button
    SeleniumLibrary.Click Button    ${cart_locator.pay_btn}