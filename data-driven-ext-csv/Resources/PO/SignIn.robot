*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_IN_EMAIL} =          xpath=//input[@ng-model='$ctrl.credentials.email']
${SIGN_IN_PASSWORD} =       xpath=//input[@ng-model='$ctrl.credentials.password']
${LOGIN_SUBMIT_BUTTON} =    Log In

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    wait until page contains element  ${SIGN_IN_EMAIL}
    run keyword unless  '${Credentials[0]}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials[0]}
    run keyword unless  '${Credentials[1]}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials[1]}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage[2]}

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN_IN_PASSWORD}