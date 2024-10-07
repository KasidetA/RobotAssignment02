*** Keywords ***
Add product to cart
    [Arguments]    ${product.product_name}    
    product_page.Click add product to cart    ${product.product_name}
    product_detail_page.Click add to cart button and ok button
