*** Keywords ***
Type and search product
    [Arguments]    ${product}
    SeleniumLibrary.Input Text          ${home_locator.input_txt}     ${product}
    SeleniumLibrary.Click Element       ${home_locator.search_btn}

Click add product to cart
    [Arguments]    ${product.product_name}
    ${new_locator}  String.Replace String   ${home_locator.search_txt_product_name}     {{product}}     ${product.product_name}
    Wait and click element                          ${new_locator}

Click add to cart button and ok button
    Wait and click element                          ${home_locator.add_to_cart_btn}
    Wait and click element                          ${home_locator.ok_popup}