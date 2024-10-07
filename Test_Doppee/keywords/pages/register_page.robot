*** Keywords ***
Input register email
    [Arguments]    ${email}    
    SeleniumLibrary.Input Text      ${register_locator.username_container}     ${email}

Input register password
    [Arguments]    ${password}    
    SeleniumLibrary.Input Text      ${register_locator.password_container}    ${password}

Input confirm password
    [Arguments]    ${cf_password}    
    SeleniumLibrary.Input Text      ${register_locator.confirm_password_container}    ${cf_password}

Click submit button
    SeleniumLibrary.Click Button    ${register_locator.submit_btn}
    Wait and click element          ${register_locator.ok_btn}
