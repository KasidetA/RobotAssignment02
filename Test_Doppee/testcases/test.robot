*** Settings ***
Resource    ../keywords/pages/import.robot


*** Test Cases ***
# Test Register 
#     common.Open Website
#     common.Click User ICON
#     log_in_page.Click Sign up button
#     register_page.Input Register Email    ${user.email}
#     register_page.Input Register Password    ${user.password}
#     register_page.Input Confirm Password    ${user.cf_password}
#     register_page.Submit Registration
#     common.Click User ICON
#     user_profile_page.Log Out

Test Log in
    common.Open Website
    common.Click User ICON
    log_in_feature.Login    ${user.email}    ${user.password}
    home_page.Type and Search Product    ${user.product}
    home_feature.Add Product to Cart    ${product.product_name}
    common.Open Cart
    cart_feature.Fill in Delivery info and Start Payment Process    ${user.name}    ${user.surname}    
    ...    ${user.address}    ${user.phone}    ${user.email} 
    payment_page.Select Payment Method 
    payment_feature.Fill in Credit Card Details and Confirm Payment    ${user.creditcard}    ${user.exp}    
    ...    ${user.cvc}    ${user.name}
    common.Click User ICON
    user_profile_page.Check Ordered

    #robot  -d result -v type:uat test.robot