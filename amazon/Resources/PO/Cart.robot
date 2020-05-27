*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CHECKOUT_LINK} =  css=#hlb-ptc-btn-native

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed To Checkout
    Click Link  ${CHECKOUT_LINK}