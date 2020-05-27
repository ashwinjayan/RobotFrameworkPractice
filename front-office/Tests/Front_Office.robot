*** Settings ***
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/FrontOfficeApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

#robot -d Results Tests/Front_Office.robot

*** Variables ***
${BROWSER} =   chrome
${URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
Should be able to access "Team" Page
    [Documentation]  Some info about the test
    [Tags]  Test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should match requirements
    [Documentation]  Some info about the test
    [Tags]  Test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page