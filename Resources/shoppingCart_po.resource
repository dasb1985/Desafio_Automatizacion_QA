*** Variables ***
${search_input}=    name=search

#Buttons
${search_btn}=            xpath=//button[@class="btn btn-default btn-lg"]
${addToCart_btn}=         xpath=//button[@type="button" and contains(@onclick, "cart.add")]
${displayCart_btn}=       xpath=//div[@id="cart"]/button
${cart_btn}=              xpath=//div[@id="cart"]//ul

${checkout_menu_btn}=     xpath=//a[contains(@href, 'checkout/checkout')]

#Text Locators
${alert_text_locator}=    xpath=//div[contains(@class, "alert-success")]

${checkout_txt}=    Checkout