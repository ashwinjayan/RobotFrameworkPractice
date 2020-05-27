*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAM_HEADER_ELEMENT} =  //*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${TEAM_HEADER_ELEMENT}

Validate Page Contents
    #element should contain  ${TEAM_HEADER_ELEMENT}  Our Amazing Team  ignore_case=true
    ${ElementHeaderText} =  get text  ${TEAM_HEADER_ELEMENT}
    should be equal as strings  ${ElementHeaderText}  Our Amazing Team  ignore_case=true