*** Keywords ***
Type and search product
    [Arguments]    ${product}
    SeleniumLibrary.Input Text          ${home_locator.input_txt}     ${product}
    SeleniumLibrary.Click Element       ${home_locator.search_btn}


