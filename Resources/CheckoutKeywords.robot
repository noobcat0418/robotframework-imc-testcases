***Settings***
Library    SeleniumLibrary
Variables    ../PageObjects/Checkout.py
Variables    ../PageObjects/Cart.py

*** Keywords ***
Fill Checkout Form
    [Arguments]    ${country}    ${address}    ${townCity}    ${district}    ${zipcode}    ${phone}
    [Documentation]    Fills out the checkout form fields with the specified details.

    Scroll Element Into View    ${button_proceedToCheckout}
    Wait Until Element Is Visible    ${button_proceedToCheckout}
    Click Element    ${button_proceedToCheckout}
    
    Wait Until Element Is Visible    ${inputField_FirstNameCheckout}    10s
    ${first_name}=    Get Text    ${inputField_FirstNameCheckout}
    ${last_name}=     Get Text    ${inputField_LastNameCheckout}
    Log    First Name: ${first_name}
    Log    Last Name: ${last_name}

    Click Element    ${dropdown_Country}
    Click Element    xpath://li[text()='${country}']

    Input Text    ${inputField_AddressCheckout}    ${address}
    Input Text    ${inputField_TownCity}    ${townCity}

    Click Element    ${dropdown_Distrcit}
    Click Element    xpath://li[text()='${district}']

    Input Text    ${inputField_Zipcode}    ${zipcode}
    Input Text    ${inputField_PhoneCheckout}    ${phone}

    ${email}=    Get Text    ${inputField_emailCheckout}
    Log    Email: ${email}

    Scroll Element Into View    ${button_payment}
    Wait Until Element Is Visible    ${button_payment}    10s
    Wait Until Element Is Enabled    ${button_payment}    10s
    Wait Until Element Is Visible    ${button_payment}    10s
    Click Element    ${button_payment}