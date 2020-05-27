*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/TopNav.robot
Resource  PO/SearchResults.robot
Resource  PO/Product.robot
Resource  PO/Cart.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search For Products
    SearchResults.Verify Search Completed

Select Product From Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Adding Product To Cart
    Product.Add To Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed To Checkout