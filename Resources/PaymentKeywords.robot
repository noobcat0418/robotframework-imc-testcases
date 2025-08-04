***Settings***
Library    SeleniumLibrary
Variables    ../PageObjects/Payment.py
    
*** Keywords ***
Verify Payment Page Is Displayed
    [Documentation]    Verifies that the payment page is displayed by checking the presence of the payment button.
    Wait Until Element Is Visible    xpath://h2[text()='Payment Successful!']    10s
    Element Should Be Visible    xpath://h2[text()='Payment Successful!']    # Verify the payment page header is visible

Verify Download Button Is Displayed
    [Documentation]    Verifies that the download button is displayed on the payment page.
    Wait Until Element Is Visible    ${button_download}    10s
    Element Should Be Visible    ${button_download}    # Verify the download button is visible