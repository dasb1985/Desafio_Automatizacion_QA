*** Settings ***
Library    SeleniumLibrary
Resource   ..//Resources//shoppingCart_kw.resource
Resource   ..//Resources//checkoutPage_kw.resource
Resource   ..//Resources//history_kw.resource

*** Variables ***
${url}      https://opencart.abstracta.us/index.php?route=common/home
${idVarPrincipal}        6


*** Test Cases ***
Shopping and create new account
    Set Log Level    Debug
    Store page is loaded
    Search product: Ipod Classic for add to cart
    Search product: iMac for add to cart
    Deploy cartMenu and validate items
    Go to checkout page
    Continue creating new account
    Fillup personal data
    Fillup address data
    Fillup password data and continue to delivery
    Deliver Detailsy continue
    Validate Type and shippingRate
    Select payment method
    Check final amounts 
    Confirm order
    Validate order has been placed
    Go to history page
    Check order
    Logout from page

#TODO 
#REEMPLAZAR LOS SLEEP POR WAITS


*** Keywords ***
Store page is loaded
    Open Browser    ${url}        Chrome
    Maximize Browser Window
    ${title}=        Get Title
    Should Be Equal    ${title}    Your Store    
    Sleep  2s






    
