*** Keywords ***
Open Website
    SeleniumLibrary.Open Browser        ${${type}.url}      gc

Click User ICON
    SeleniumLibrary.Click Element       ${common_locator.user_icon}

Open Cart
    SeleniumLibrary.Click Element       ${common_locator.shopping_cart_icon}