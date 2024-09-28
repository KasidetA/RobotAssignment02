*** Settings ***
Resource    ../resources/import.robot


*** Test Cases ***
Test Register 
    uuid_gen.Generate and save uuid email
    common.Open website
    common.Click user icon
    log_in_page.Click sign up button
    register_page.Input register email    ${email}
    register_page.Input register password    ${user.password}
    register_page.Input confirm password    ${user.cf_password}
    register_page.Submit registration
    common.Click user icon
    user_profile_page.Log out
    Close Browser
    
Test Log in
    common.Open website
    common.Click user icon
    log_in_feature.Login    ${email}    ${user.password}
    home_page.Type and search product    ${user.product}
    home_feature.add product to cart    ${product.product_name}
    common.Open cart
    cart_feature.Fill in delivery info and start payment process    ${user.name}    ${user.surname}    
    ...    ${user.address}    ${user.phone}    ${email} 
    payment_page.Select payment method 
    payment_feature.Fill in credit card details and confirm payment    ${user.creditcard}    ${user.exp}    
    ...    ${user.cvc}    ${user.name}
    common.Click user icon
    user_profile_page.Log out

    #robot  -d result -v type:uat test.robot