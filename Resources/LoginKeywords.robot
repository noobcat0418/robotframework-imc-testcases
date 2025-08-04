***Settings***
Library    SeleniumLibrary
Resource    Commonkeywords.robot
Variables    ../PageObjects/GlobalVariables.py
Variables    ../PageObjects/Login.py
Variables    ../PageObjects/SignUp.py

*** Keywords ***
Login to IMC
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${button_loginImc}    10s
    Wait Until Element Is Enabled    ${button_loginImc}    10s
    Click Button    ${button_loginImc}
    Sleep    5s
    Switch Window    NEW

    Wait Until Element Is Enabled    ${inputField_email} 
    Input Text    ${inputField_email}   ${username}
    Input Text    ${inputField_password}    ${password}
    Click Button    ${button_loginAuth0}
    ${handles}=    Get Window Handles
    Switch Window    ${handles}[0]
    Sleep    5s