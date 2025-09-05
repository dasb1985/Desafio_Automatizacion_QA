*** Settings ***
Resource   ..//Resources//history_po.resource
Library    Collections
Library    SeleniumLibrary

*** Keywords ***

Check order
    #Boton de la compra para ver detalles
    Click Element    ${orderDetail_btn}
    Sleep   2s

    ${orderDetails}=     Get Text   ${orderDetails_tbl}
    Log    ${orderDetails}

    ${produDetail}=    Get Text    xpath=//div[@id='content']//table[.//thead/tr/td[contains(text(),'Product Name')]]//tbody/tr
    Log     ${produDetail}

    ${statusDetail}=    Get Text    xpath=//div[@id='content']//table[.//thead/tr/td[contains(text(),'Status')]]//tbody/tr
    Log    ${statusDetail}



