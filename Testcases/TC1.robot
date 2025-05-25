*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demowebshop.tricentis.com
${LOGIN_URL}    https://demowebshop.tricentis.com/login
${CART_URL}    https://demowebshop.tricentis.com/cart
${CHECKOUT_URL}    https://demowebshop.tricentis.com/onepagecheckout
${BROWSER}    Chrome
${FIRSTNAME}    Test
${LASTNAME}    User
${EMAIL}    Fkhan2021@example.com
${PASSWORD}    Test@1234
${ADDRESS1}    x
${ADDRESS2}    x
${CITY}    x
${ZIP}    x
${PHONE}    x
${FAX}    x
#${COUNTRY}    United States
#${STATE}    Alabama



#Register New User
    #Open Browser    ${URL}    ${BROWSER}
    #Maximize Browser Window

    #Click Link    xpath: /html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    #Wait Until Element Is Visible    id=FirstName
     #Sleep    2s
    #Input Text    id=FirstName    ${FIRSTNAME}
    #Sleep    1s
    #Input Text    id=LastName    ${LASTNAME}
    #Sleep    1s
    #Input Text    id=Email    ${EMAIL}
    #Sleep    1s
    #Input Text    id=Password    ${PASSWORD}
    #Sleep    1s
    #Input Text    id=ConfirmPassword    ${PASSWORD}
    #Sleep    1s
    #Click Button    id=register-button
    #Wait Until Page Contains    Your registration completed
    #Sleep    2s
    #Close Browser

*** Test Cases ***
Logout and Attempt Registration with Existing Email
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=Email
    Sleep    2s
    Input Text    id=Email    ${EMAIL}
    Sleep    1s
    Input Text    id=Password    ${PASSWORD}
    Sleep    1s
    Click Button    xpath=//input[@value='Log in']
    Wait Until Page Contains    Log out
    Sleep    2s

    # Logout
    Click Element    xpath=/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Wait Until Page Contains    Register
    Sleep    2s

    # Click Register Button
    Click Element    xpath=/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    Wait Until Element Is Visible    id=FirstName
    Sleep    2s
    Input Text    id=FirstName    ${FIRSTNAME}
    Sleep    1s
    Input Text    id=LastName    ${LASTNAME}
    Sleep    1s
    Input Text    id=Email    ${EMAIL}
    Sleep    1s
    Input Text    id=Password    ${PASSWORD}
    Sleep    1s
    Input Text    id=ConfirmPassword    ${PASSWORD}
    Sleep    1s
    Click Button    id=register-button

    # Check if email already exists and highlight it in red with background
    Wait Until Element Is Visible    xpath=/html/body/div[4]/div[1]/div[4]/div[2]/form/div/div[2]/div[1]/div/ul/li    5s
    Execute JavaScript    document.evaluate('/html/body/div[4]/div[1]/div[4]/div[2]/form/div/div[2]/div[1]/div/ul/li', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.style.color = 'red'
    Execute JavaScript    document.evaluate('/html/body/div[4]/div[1]/div[4]/div[2]/form/div/div[2]/div[1]/div/ul/li', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.style.backgroundColor = 'yellow'
    Element Should Contain    xpath=/html/body/div[4]/div[1]/div[4]/div[2]/form/div/div[2]/div[1]/div/ul/li    The specified email already exists
    Sleep    2s
    Close Browser

Login and Order Product
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id=Email
    Sleep    2s
    Input Text    id=Email    ${EMAIL}
    Sleep    1s
    Input Text    id=Password    ${PASSWORD}
    Sleep    1s
    Click Button    xpath=//input[@value='Log in']
    Wait Until Page Contains    Log out
    Sleep    2s

    # Scroll to product and add to cart
    Execute JavaScript    window.scrollBy(0, 300)
    Sleep    2s
    Click Button    xpath=/html/body/div[4]/div[1]/div[4]/div[3]/div/div/div[3]/div[3]/div/div[2]/div[3]/div[2]/input
    Wait Until Page Contains    The product has been added to your shopping cart
    Sleep    2s

    # Navigate to shopping cart
    Go To    ${CART_URL}
    Wait Until Page Contains    Shopping cart
    Sleep    2s

    Select From List By Label    CountryId    Germany
    Sleep    4s
    select from list by index    CountryId    16
    Sleep    2s


    # Proceed to checkout
    Click Button    xpath=//input[@name='termsofservice']
    Click Button    xpath=//button[@id='checkout']
    Wait Until Page Contains    Checkout
    Sleep    2s


    # Proceed through checkout steps
    select from list by label    billing_address_id     New Address
    sleep    2s
    select from list by label    BillingNewAddress.CountryId   Austria
    sleep    2s
    input text     id= BillingNewAddress_City  ${CITY}
    sleep    5s
    input text     id= BillingNewAddress_Address1   ${ADDRESS1}
    sleep    3s
    Input Text    id=BillingNewAddress_ZipPostalCode   ${ZIP}
    Sleep    2s
    Input Text    id=BillingNewAddress_PhoneNumber    ${PHONE}
    Sleep    2s
    Click Button    xpath=//*[@id="billing-buttons-container"]/input
    Sleep    1s
    #handle alert    dismiss
    #Sleep    2s
    Click Button    xpath=//*[@id="shipping-buttons-container"]/input
    Sleep    2s
    Click Button    xpath=//*[@id="shipping-method-buttons-container"]/input
    Sleep    2s
    Click Button    xpath=//*[@id="payment-method-buttons-container"]/input
    Sleep    2s
    Click Button    xpath=//*[@id="payment-info-buttons-container"]/input
    Sleep    2s
    Click Button    xpath=//*[@id="confirm-order-buttons-container"]/input
    Wait Until Page Contains    Your order has been successfully processed!
    Sleep    2000s

    #Click Element    xpath=//button[contains(text(), 'OK')]

    # Close browser after order completion
    #Close Browser



#Login User
  # click link   xpath:/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a