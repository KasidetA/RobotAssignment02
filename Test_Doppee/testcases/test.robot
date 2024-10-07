*** Settings ***
Resource        ${CURDIR}\..\resources\setting\import.robot

Test Setup      common.Open website         https://training-platform.doppio-tech.com/
Test Teardown   Close Browser


*** Test Cases ***
Test Register 
    [Tags]      RegisterS
    Log To Console      ${CURDIR}/../resources/setting/import.robot
    common.Generate new email
    common.Click user icon
    log_in_page.Click sign up button
    register_page.Input register email      ${modified_email}
    register_page.Input register password    ${user.password}
    register_page.Input confirm password    ${user.cf_password}
    register_page.Click Submit button

    
Test Log in
    [Tags]      Login
    common.Click user icon
    log_in_feature.Login    ${modified_email}    ${user.password}
    home_page.Type and search product    ${user.product}
    home_feature.add product to cart    ${product.product_name}
    common.Open cart
    cart_feature.Fill in delivery info and start payment process    ${user.name}    ${user.surname}    
    ...    ${user.address}    ${user.phone}    ${modified_email} 
    payment_page.Select payment method 
    payment_feature.Fill in credit card details and confirm payment    ${user.creditcard}    ${user.exp}    
    ...    ${user.cvc}    ${user.name}
    common.Click user icon
    user_profile_page.Log out

    #robot  -d result -v type:uat test.robot


