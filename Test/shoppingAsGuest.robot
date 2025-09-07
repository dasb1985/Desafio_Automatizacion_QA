*** Settings ***
Library    SeleniumLibrary
Resource   ..//Resources//shoppingCart_kw.resource
Resource   ..//Resources//checkoutPage_kw.resource
Resource   ..//Resources//common.resource

*** Variables ***
${url}      https://opencart.abstracta.us/index.php?route=common/home


*** Test Cases ***
Shopping as guest
    Store page is loaded
    Search product: Ipod Classic for add to cart
    Search product: iMac for add to cart
    Deploy cartMenu and validate items
    Go to checkout page
    Continue as guest user
    Fillup personal data
    Fillup address data
    Continue to Delivery Method section
    Validate Type and shippingRate
    Select payment method
    Check final amounts 
    Confirm order
    Validate order has been placed   
