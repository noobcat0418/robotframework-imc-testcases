***Settings***
Library    SeleniumLibrary

Variables    ../PageObjects/GlobalVariables.py   
   
*** Keywords ***
Open Browser Using Incognito
    [Arguments]    ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --incognito
    Create WebDriver    Chrome    options=${options}
    Go To    ${url}
    Maximize Browser Window