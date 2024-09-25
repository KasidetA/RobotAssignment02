*** Keywords ***
Input Register Email
    [Arguments]    ${email}    
    SeleniumLibrary.Input Text    $ {register_locator.username_container}     ${email}

Input Register Password
    [Arguments]    ${password}    
    SeleniumLibrary.Input Text      ${register_locator.password_container}    ${password}

Input Confirm Password
    [Arguments]    ${cf_password}    
    SeleniumLibrary.Input Text      ${register_locator.confirm_password_container}    ${cf_password}

Submit Registration
    SeleniumLibrary.Click Button    ${register_locator.submit_btn}
    SeleniumLibrary.Wait Until Element Is Visible    ${register_locator.ok_btn}    10s
    SeleniumLibrary.Click Button    ${register_locator.ok_btn}
