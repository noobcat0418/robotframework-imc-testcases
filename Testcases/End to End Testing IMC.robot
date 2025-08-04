***Settings***
Library    SeleniumLibrary
Resource    ../Resources/YopMailKeywords.robot
Resource    ../Resources/SignUpKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Resources/SelectCourseKeywords.robot
Resource    ../Resources/CartKeywords.robot
Resource    ../Resources/CheckoutKeywords.robot
Resource    ../Resources/PaymentKeywords.robot
Resource    ../Resources/MyLearningKeywords.robot
Variables    ../PageObjects/GlobalVariables.py

*** Variables ***
${firstName}    John
${lastName}    Doe    
${middleName}   Armas
${email}    ${EMPTY}  # This will be generated dynamically
${contactNumber}    0123456678
${company}    Example Corp
${companyAddress}    123 Example St, City, Country
${courseName}    Cyber Security Specialist
${country}    Philippines (PH)
${townCity}    Bicutan City
${district}    Taguig
${zipcode}    1634

*** Test Cases ***
End to End Testing IMC
    [Documentation]    This test case covers the end-to-end flow of signing up, logging into IMC, add to cart checking the re.
    [Tags]    E2E IMC

    # Generate a Yopmail email and assign to ${email}
    ${generatedEmail}=    Generate Yopmail Email    ${email}

    # Sign up to IMC using the generated email
    Sign Up to IMC    ${firstName}    ${lastName}    ${middleName}    ${generatedEmail}    ${contactNumber}    ${company}    ${companyAddress}    ${password}

    # Log in to IMC using the generated email
    Login to IMC    ${generatedEmail}    ${password}

    # Select a course from the swiper main page
    Select Course in Swiper Main page    ${courseName}

    # Verify the course is added to the cart
    Verify course added is displayed in cart    ${courseName}

    # Calculate the total amount of the course in the cart
    Calculate course total amount in cart    ${courseName}

    # Proceed to checkout
    Fill Checkout Form    ${country}    ${companyAddress}    ${townCity}    ${district}    ${zipcode}    ${contactNumber}

    # Verify the processing payment message is displayed
    Verify Processing payment message is displayed

    # Verify the payment page is displayed
    Verify Payment Page Is Displayed
    Verify Download Button Is Displayed

    # Verify the course is displayed in the payment page
    Verify Course Added Is Displayed In My Learning Page    ${courseName}