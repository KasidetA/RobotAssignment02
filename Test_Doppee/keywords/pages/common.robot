*** Keywords ***
Open website
    SeleniumLibrary.Open Browser        ${${type}.url}      gc

Click user icon
    SeleniumLibrary.Click Element       ${common_locator.user_icon}

Open cart
    SeleniumLibrary.Click Element       ${common_locator.shopping_cart_icon}

Wait and click element
    [Arguments]         ${element_path}
    SeleniumLibrary.Wait Until Element Is Visible       ${element_path}     10s
    SeleniumLibrary.Click Element                       ${element_path}
