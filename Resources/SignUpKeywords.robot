***Settings***
Library    SeleniumLibrary

Resource    Commonkeywords.robot

Variables    ../PageObjects/GlobalVariables.py
Variables    ../PageObjects/Login.py
Variables    ../PageObjects/SignUp.py

*** Keywords ***
Sign Up to IMC
    [Arguments]    ${firstName}    ${lastName}    ${middleName}    ${email}    ${contactNumber}    ${company}    ${companyAddress}    ${password}
    Open Browser Using Incognito    ${imcwebsite}    
    Maximize Browser Window
    Wait Until Element Is Visible    ${button_signUpHeader}    10s
    Wait Until Element Is Enabled    ${button_signUpHeader}    10s
    Click Button    ${button_signUpHeader}
    Input Text    ${inputField_firstName}    ${firstName}
    Input Text    ${inputField_lastName}    ${lastName}
    Input Text    ${inputField_middleName}    ${middleName}
    Input Text    ${inputField_email}    ${email}
    Input Text    ${inputField_contactNumber}    ${contactNumber}
    Input Text    ${inputField_company}    ${company}
    Input Text    ${inputField_companyAddress}    ${companyAddress}
    Input Text    ${inputField_password}    ${password}
    Input Text    ${inputField_comfirmPassword}    ${password}
    Scroll Element Into View    ${button_signUpRegistration}
    Wait Until Element Is Visible    ${button_signUpRegistration}    10s
    Wait Until Element Is Enabled    ${button_signUpRegistration}    10s
    Click Button    ${button_signUpRegistration}
    Wait Until Page Contains Element   xpath://div[contains(text(), '🎉 Registration successful!')]   10s
    Sleep    5s
