*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${FIRST_PRODUCT_LINK} =  css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-20-of-24.sg-col-28-of-32.sg-col-16-of-20.sg-col.sg-col-32-of-36.sg-col-8-of-12.sg-col-12-of-16.sg-col-24-of-28 > div > span:nth-child(5) > div:nth-child(1) > div:nth-child(1) > div > span > div > div > div:nth-child(3) > h2 > a

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first result in the search results page
    Click Link  ${FIRST_PRODUCT_LINK}