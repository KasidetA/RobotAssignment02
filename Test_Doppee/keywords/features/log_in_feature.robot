*** Keywords ***
Login
    [Arguments]    ${email}    ${password}
    log_in_page.Fill in an email    ${email}
    log_in_page.Fill in password    ${password}
    log_in_page.Click login and ok button
