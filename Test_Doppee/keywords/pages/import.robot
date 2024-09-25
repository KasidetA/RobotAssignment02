*** Settings ***
Library    SeleniumLibrary
Library    String

Variables    ../../resources/testdata/testdata.yaml
Variables    ../../resources/setting/setting.yaml

Resource    ../features/log_in_feature.robot
Resource    ../features/home_feature.robot
Resource    ../features/cart_feature.robot
Resource    ../features/payment_feature.robot

Resource    common.robot
Resource    home_page.robot
Resource    user_profile_page.robot
Resource    log_in_page.robot
Resource    register_page.robot
Resource    payment_page.robot
Resource    cart_page.robot

Resource    ../locators/home_locator.robot
Resource    ../locators/cart_locator.robot
Resource    ../locators/common_locator.robot
Resource    ../locators/log_in_locator.robot
Resource    ../locators/payment_locator.robot
Resource    ../locators/register_locator.robot
Resource    ../locators/user_profile_locator.robot