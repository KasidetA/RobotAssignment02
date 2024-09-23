*** Settings ***
Library           SeleniumLibrary

Suite Teardown      Close Browser

*** Variables ***
${URL}            https://training-platform.doppio-tech.com
${Browser}        Chrome
${Product}        phone
${Card_Number}    4111111111111111
${Exp_Date}       12/2030
${CVC}            123
${Owner_Name}     Kasidet
${Owner_SurName}  Aphiphatthrarathakorn
${Address}        123/45
${Phone}          0001112345
${Username}       testuser88@gmail.com
${Password}       Test_password123

*** Test Cases ***
TC001
    Open Browser To Website
    Register New Account
    Search the Product
    Add Product to cart
    Purchase the Product
    Check the order

# TC002
#     Open Browser To Website
#     Login The Account
#     Search the Product
#     Add Product to cart
#     Purchase the Product
#     Check the order

*** Keywords ***
Open Browser To Website
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window


Register New Account
    Click Element       xpath=//span[@aria-label="user"]
    Click Button        xpath=//button[@type='button']
    Input Text          xpath=//span/input[@id='basic_username']    ${Username}
    Input Text          xpath=//span/input[@id='basic_password']    ${Password}
    Input Text          xpath=//span/input[@id='basic_confirmPassword']    ${Password}
    Click Button        xpath=//button[@type='submit']
    Wait Until Element Is Visible       xpath=//span[text()='OK']/parent::button
    Click Element       xpath=//span[text()='OK']/parent::button
    Wait Until Element Is Not Visible   xpath=//span[text()='OK']/parent::button

Login The Account
    Click Element       xpath=//span[@aria-label="user"]
    Wait Until Element Is Visible   xpath=//input[@type='text']
    Input Text          xpath=//input[@type='text']    ${Username}
    Input Text          xpath=//input[@type='password']    ${Password}
    Click Button        xpath=//button[@type="submit"]
    Wait Until Element Is Visible   xpath=//span[text()='OK']/parent::button
    Click Element       xpath=//span[text()='OK']/parent::button

Search the Product
    Wait Until Element Is Visible    xpath=//input
    Input Text      xpath=//input    ${Product}
    Click Button    xpath=//span[@aria-label="search"]/parent::button

Add Product to cart
    Wait Until Element Is Visible   xpath=//div[text()='Coppee phone 1']
    Click Element   xpath=//div[text()='Coppee phone 1']
    Wait Until Element Is Visible   xpath=//span[text()='Add to cart']/parent::button
    Click Button    xpath=//span[text()='Add to cart']/parent::button

    Wait Until Element Is Visible       xpath=//div[@class='ant-modal-content']
    Click Button       xpath=//span[text()='OK']/parent::button

Purchase the Product
    Wait Until Element Is Visible   xpath=//span[@aria-label="shopping-cart"]
    Click Element   xpath=//span[@aria-label="shopping-cart"]
    Sleep   2
    Input Text    xpath=//input[@id="form_item_name"]   ${Owner_Name}
    Input Text      xpath=//input[@id="form_item_surName"]  ${Owner_SurName}
    Input Text      xpath=//input[@id="form_item_address"]  ${Address}
    Input Text      xpath=//input[@id="form_item_phone"]    ${Phone}
    Click Button    xpath=//span[text()='PAY']/parent::button
    Click Button    xpath=//span[text()='Next']/parent::button
    Input Text      xpath=//input[@id='basic_bin']    ${Card_Number}
    Input Text      xpath=//input[@id='basic_exp']    ${Exp_Date}
    Input Text      xpath=//input[@id='basic_cvc']    ${CVC}
    Input Text      xpath=//input[@id='basic_owner']    ${Owner_Name}
    Click Button    xpath=//span[text()='Confirm Payment']/parent::button
    Wait Until Element Is Visible       xpath=//div[text()='Payment successfully']
    Click Element       xpath=//span[text()='OK']/parent::button
    Wait Until Element Is Visible       xpath=//div[text()='Payment successfully']
    Sleep   5

Check the order
    Wait Until Element Is Visible   xpath=//span[@aria-label="user"]
    Click Element      xpath=//span[@aria-label="user"]
    Wait Until Element Is Visible   xpath=//tbody
    Scroll Element Into View    xpath=//tbody
    Sleep   5
    Click Element       xpath=//td[text()='Pending payment']
    Sleep   10