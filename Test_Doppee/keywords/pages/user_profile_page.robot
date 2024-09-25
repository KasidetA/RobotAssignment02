*** Keywords ***
Log Out
    Click Button    ${user_profile_locator.logout_btn} 

Check Ordered
    Wait Until Element Is Visible   ${order_detail_locator}     10s
    Scroll Element Into View        ${order_detail_locator}
    Sleep   5
    