*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    LandingPage.Navigate To
    LandingPage.Verify Page Loaded

Go to "Team" Page
    TopNav.Select "Team" Page

Validate "Team" Page
    Team.Verify Page Loaded
    Team.Validate Page Contents