*** Settings ***
Library    SeleniumLibrary
Resource   ..//Resources//shoppingCart_kw.resource
Resource   ..//Resources//checkoutPage_kw.resource
Resource   ..//Resources//history_kw.resource
Resource   ..//Resources//common.resource

*** Test Cases ***
Look for HP and write a review
    Store page is loaded
    Search product: Apple Cinema 30 for comparision
    Search product: Samsung SyncMaster 941BW for comparision
    Go to product comparition page









    
