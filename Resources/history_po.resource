*** Variables ***

${orderDetail_btn}=    xpath=(//table[contains(@class,'table') and contains(@class,'table-bordered')]//tbody/tr)[1]//a[contains(@class,'btn-info')]

${orderDetails_tbl}=    xpath=//div[@id='content']//table[contains(@class,'table') and contains(@class,'table-bordered')]//tbody/tr