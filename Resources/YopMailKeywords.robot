***Settings***
Library    SeleniumLibrary

Resource    Commonkeywords.robot

Variables    ../PageObjects/GlobalVariables.py
Variables    ../PageObjects/Yopmail.py


*** Keywords ***
Generate Yopmail Email
    [Arguments]        ${email}        
    Open Browser Using Incognito    ${yopmail}
    Maximize Browser Window
    Execute JavaScript    window.scrollBy(0, window.innerHeight)

    # ${ads_yopmail}=    Set Variable    xpath=//div[@id='ads']     # Ads element
    # Run Keyword And Ignore Error    Wait Until Element Is Visible    ${ads_yopmail}    timeout=5s
    # ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${ads_yopmail}
    # IF    '${is_visible}' == 'True'
    #     Press Key    NONE    PAGE_DOWN
    # ELSE
    #     Log    Ads element not visible, skipping scroll.
    # END

    Click Element    ${button_newEmailGenerator}
    Wait Until Page Contains Element    ${span_EmailGeneated}   10s
    Sleep    5s
    ${generated_email}=    Get Text    ${span_EmailGeneated}
     ${base_email}=    Set Variable    ${generated_email}
    ${full_email}=    Set Variable    ${base_email}@yopmail.com
    Log To Console    Generated Yopmail Email: ${full_email}
    RETURN    ${full_email}