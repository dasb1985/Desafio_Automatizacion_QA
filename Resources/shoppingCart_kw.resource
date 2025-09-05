*** Settings ***
Resource   ..//Resources//shoppingCart_po.resource
Library    SeleniumLibrary

*** Keywords ***

Search product: ${name_product} for add to cart
    Input Text    ${search_input}    ${name_product}
    Click Button    ${search_btn}
    Click Button    ${addToCart_btn}
    Capture Page Screenshot    screenshot-${name_product}-{index}.png
    Sleep  2s
    #Successufully alert is displayed
    ${alert_text}=   Get Text    ${alert_text_locator}
    Log    ${alert_text}
    Should Contain  ${alert_text}    ${name_product}    ignore_case=True


Validate Cart Contains Items
    [Arguments]    @{expected_products}
    ${cart_text}=    Get Text    xpath=//div[@id="cart"]//ul
    FOR    ${product}    IN    @{expected_products}
        Should Contain    ${cart_text}    ${product}     ignore_case=True
        Log    ${cart_text}
    END

Deploy cartMenu and validate items
    Click Button    ${displayCart_btn}
    Validate Cart Contains Items    Ipod Classic   iMac
    Capture Page Screenshot     screenshot-itemsOnCart-{index}.png  
    Sleep  2s

    

Go to checkout page
    #Wait Until Element Is Visible    xpath=//div[@id="cart"]//ul[contains(@class,"dropdown-menu")]    5s
    Sleep   2s
    Click Element   ${checkout_menu_btn}

    ${checkoutTitle_txt}=    Get Title
    Should Be Equal    ${checkoutTitle_txt}    ${checkout_txt}