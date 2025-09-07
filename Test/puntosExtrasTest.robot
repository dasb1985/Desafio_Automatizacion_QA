*** Settings ***
Library    SeleniumLibrary
Resource   ..//Resources//shoppingCart_kw.resource
Resource   ..//Resources//checkoutPage_kw.resource
Resource   ..//Resources//history_kw.resource
Resource   ..//Resources//common.resource

*** Test Cases ***
Look for HP and write a review
    Store page is loaded
    Pick item HP LP3065 and added 2 times
    Write a review








    
