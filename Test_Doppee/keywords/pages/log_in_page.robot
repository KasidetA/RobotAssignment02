*** Keywords ***
Fill in an email
    [Arguments]    ${email}
    SeleniumLibrary.Input Text          ${login_locator.email_container}    ${email}

Fill in password  
    [Arguments]    ${password}  
    SeleniumLibrary.Input Text          ${login_locator.password_container}    ${password}

Click login and ok button
    SeleniumLibrary.Click Button        ${login_locator.log_in_btn} 
    Wait and click element              ${login_locator.ok_btn}

Click sign up button
    SeleniumLibrary.Click Element       ${login_locator.sign_up_btn}