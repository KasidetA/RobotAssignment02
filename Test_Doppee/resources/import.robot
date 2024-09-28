*** Settings ***
Library    SeleniumLibrary
Library    String

Variables    testdata/uuid_email.yaml
Variables    testdata/testdata.yaml
Variables    setting/setting.yaml

Resource    ../keywords/features/log_in_feature.robot
Resource    ../keywords/features/home_feature.robot
Resource    ../keywords/features/cart_feature.robot
Resource    ../keywords/features/payment_feature.robot

Resource    ../keywords/pages/common.robot
Resource    ../keywords/pages/home_page.robot
Resource    ../keywords/pages/user_profile_page.robot
Resource    ../keywords/pages/log_in_page.robot
Resource    ../keywords/pages/register_page.robot
Resource    ../keywords/pages/payment_page.robot
Resource    ../keywords/pages/cart_page.robot

Resource    ../keywords/locators/home_locator.robot
Resource    ../keywords/locators/cart_locator.robot
Resource    ../keywords/locators/common_locator.robot
Resource    ../keywords/locators/log_in_locator.robot
Resource    ../keywords/locators/payment_locator.robot
Resource    ../keywords/locators/register_locator.robot
Resource    ../keywords/locators/user_profile_locator.robot

Resource    uuid_gen.robot
