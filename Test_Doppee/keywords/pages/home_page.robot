*** Keywords ***
Type and Search Product
    [Arguments]    ${product}
    SeleniumLibrary.Input Text          ${home_locator.input_txt}     ${product}
    SeleniumLibrary.Click Element       ${home_locator.search_btn}

Click Add Product to Cart
    [Arguments]    ${product.product_name}
    ${new_locator}  String.Replace String   ${home_locator.search_txt_product_name}     {{product}}     ${product.product_name}

    SeleniumLibrary.Wait Until Element Is Visible       ${new_locator}    10s
    SeleniumLibrary.Click Element                       ${new_locator}

Click Add to Cart Button and OK Button
    SeleniumLibrary.Wait Until Element Is Visible       ${home_locator.add_to_cart_btn}     10s
    SeleniumLibrary.Click Element                       ${home_locator.add_to_cart_btn}
    SeleniumLibrary.Wait Until Element Is Visible       ${home_locator.ok_popup}            10s
    SeleniumLibrary.Click Element                       ${home_locator.ok_popup}