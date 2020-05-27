*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_IN_TITLE} =  xpath=//*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element  ${SIGN_IN_TITLE}
    Element Text Should Be  ${SIGN_IN_TITLE}  Sign-In