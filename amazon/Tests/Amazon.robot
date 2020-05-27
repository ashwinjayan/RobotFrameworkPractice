*** Settings ***
Documentation  This is some basic info about the suite
Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search For Products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonApp.Search For Products
    AmazonApp.Select Product From Search Results
    AmazonApp.Adding Product To Cart
    AmazonApp.Begin Checkout