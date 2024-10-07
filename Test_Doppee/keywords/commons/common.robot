*** Keywords ***
Open website
    [Arguments]    ${link_url}
    ${chrome_options}=    BuiltIn.Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    # Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --window-size\=1920,1080
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${link_url}   ${ui_setting['browser']}    options=${chrome_options}

Click user icon
    SeleniumLibrary.Click Element       ${common_locator.user_icon}

Open cart
    SeleniumLibrary.Click Element       ${common_locator.shopping_cart_icon}

Wait and click element
    [Arguments]         ${element_path}
    SeleniumLibrary.Wait Until Element Is Visible       ${element_path}     10s
    SeleniumLibrary.Click Element                       ${element_path}


Generate random number
    ${random_number}=    DateTime.Get current date    result_format=%m%d_%H%M%S
    RETURN     ${random_number}

    
Add random number to email
    [Arguments]    ${email}
    ${parts}            String.Split string         ${email}    @
    ${mail_part}        BuiltIn.Set variable        ${parts[0]}
    ${domain_part}      BuiltIn.Set variable        ${parts[1]}
    ${random_number}    common.Generate random number
    ${modified_email}   BuiltIn.Set variable        ${mail_part}+${random_number}@${domain_part}
    RETURN     ${modified_email}

Generate new email
    common.Add random number to email       kasidet.a@doppiotech.com