***Settings***
Library    SeleniumLibrary

Resource    Commonkeywords.robot

*** Keywords ***
Select Course in Swiper Main page
    [Arguments]    ${courseName}
    [Documentation]    This keyword selects a course from the course list based on the provided course name.

    # Wait for the swiper to be visible
    Sleep    5s
    Execute JavaScript    window.scrollBy(0, window.innerHeight)
    Scroll Element Into View    xpath://h2[text()='Explore Your Future Career Paths']
    Wait Until Element Is Visible    xpath://h2[text()='Explore Your Future Career Paths']    10s
    
    # # Get the list of course elements
    # ${courseElements}=    Get WebElements    xpath://div[@class='career-card__content']//h3[text()='${courseName}']/ancestor::div[@class='overlay-content']/following-sibling::div/button
    # # Check if the course exists
    # Run Keyword If    ${courseElements} == []    Fail    Course '${courseName}' does not exist in the swiper.

    Wait Until Element Is Visible    xpath://div[@class='career-card__content']//h3[text()='${courseName}']    10s
    Scroll Element Into View         xpath://div[@class='career-card__content']//h3[text()='${courseName}']
    Sleep                            1s
    Mouse Over                       xpath://div[@class='career-card__content']//h3[text()='${courseName}']
    Scroll Element Into View    xpath://h3[text()='${courseName}']/ancestor::div[@class='overlay-content']/following-sibling::div/button
    Wait Until Element Is Visible    xpath://h3[text()='${courseName}']/ancestor::div[@class='overlay-content']/following-sibling::div/button    10s
    Click Element                    xpath://h3[text()='${courseName}']/ancestor::div[@class='overlay-content']/following-sibling::div/button

    Wait Until Page Contains Element    xpath://div[text()='Added to cart successfully!']    10s
