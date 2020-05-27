*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary

*** Variables ***
${SEARCH_BOX_ID} =  id=twotabsearchtextbox
${SEARCH_BUTTON_LOCATOR} =  xpath=//*[@class='nav-search-submit nav-sprite']/input[@type='submit']

*** Keywords ***
Search For Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${SEARCH_BOX_ID}  ${SEARCH_TERM}

Submit Search
    Click Button  ${SEARCH_BUTTON_LOCATOR}