***Settings***
Library    SeleniumLibrary
Library    BuiltIn
Library    String
Resource    Commonkeywords.robot
Variables    ../PageObjects/GlobalVariables.py
Variables    ../PageObjects/Cart.py


*** Keywords ***
Verify Processing payment message is displayed
    [Documentation]    This keyword verifies that the processing payment message is displayed on the cart page.
    
    # Wait for the processing payment message to be visible
    Wait Until Element Is Visible    xpath=//div[text()='Processing payment...']    10s
    Element Should Be Visible    xpath=//div[text()='Processing payment...']    # Verify the processing payment message is visible
    Sleep    10s

Calculate course total amount in cart
    [Arguments]    ${courseName}
    [Documentation]    This keyword calculates the total amount of the specified course in the cart.
    
    # Wait for the cart page to load and retrieve the course amount
    Wait Until Page Contains Element    xpath=//h5/a[text()='${courseName}']    10s
    ${courseAmount}=    Get Text    xpath=//h5/a[text()='${courseName}']/ancestor::div[@class='flex-grow-1']//h5[@class='mb-1']
    ${totalAmount}=     Get Text    xpath=//h3[@class='mb-0']

    ${ccourseAmount}=    Evaluate    ${courseAmount.replace('₱', '').replace(',', '').strip()}
    ${ctotalAmount}=    Evaluate    ${totalAmount.replace('₱', '').replace(',', '').strip()}
    Log To Console    RAW: "${ccourseAmount} ${ctotalAmount}"

    ${fcourseAmount}=       Convert To Number    ${ccourseAmount}
    ${ftotalAmount}=        Convert To Number    ${ctotalAmount}

    Should Be Equal As Numbers    ${fcourseAmount}    ${ftotalAmount}

Verify course added is displayed in cart
    [Arguments]    ${courseName}
    [Documentation]    This keyword verifies that the specified course is displayed in the cart.
    
    # Wait for the cart icon to be visible and click it
    Sleep    6s
    Wait Until Element Is Visible    ${icon_cart}    10s
    Click Element                    ${icon_cart}
    
    # Wait for the cart page to load and verify the course name
    Wait Until Page Contains Element    xpath=//h5/a[text()='${courseName}']    10s