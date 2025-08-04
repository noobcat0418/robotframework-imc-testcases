***Settings***
Library    SeleniumLibrary
Variables    ../PageObjects/Checkout.py
Variables    ../PageObjects/Cart.py



*** Keywords ***
Verify Course Added Is Displayed In My Learning Page
    [Arguments]    ${courseName}
    [Documentation]    Verifies that the course added is displayed in the cart.
    Sleep    5s
    Wait Until Element Is Visible    //div[text()='Career Path']/parent::div//ul//span[text()='${courseName}']    10s