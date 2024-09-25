*** Settings ***
Resource    ../pages/import.robot


*** Keywords ***
Add Product to Cart
    [Arguments]    ${product.product_name}    
    Click Add Product to Cart    ${product.product_name}
    Click Add to Cart Button and OK Button
