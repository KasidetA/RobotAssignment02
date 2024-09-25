*** Keywords ***
Fill in an Email
    [Arguments]    ${email}
    SeleniumLibrary.Input Text          ${login_locator.email_container}    ${email}

Fill in password  
    [Arguments]    ${password}  
    SeleniumLibrary.Input Text          ${login_locator.password_container}    ${password}

Click login and ok_btn
    SeleniumLibrary.Click Button        ${login_locator.log_in_btn} 
    SeleniumLibrary.Wait Until Element Is Visible    ${log_in_locator.ok_btn}     10s
    SeleniumLibrary.Click Button        ${login_locator.ok_btn}

Click Sign up button
    SeleniumLibrary.Click Element       ${login_locator.sign_up_btn}