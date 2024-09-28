*** Keywords ***
Fill in delivery info and start payment process
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${email}
    Wait Until Element Is Visible       ${cart_locator.input_txt_name}
    cart_page.Input email in delivery info                  ${email}
    cart_page.Input name in delivery info                   ${name}
    cart_page.Input surname in delivery info                ${surname}
    cart_page.Input address in delivery info                ${address}
    cart_page.Input phone in delivery info                  ${phone}
    cart_page.Click pay button
