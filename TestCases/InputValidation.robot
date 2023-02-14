*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}      https://www.flipkart.com/
${item}     Iphone14
${browser}  chrome
${expected_title}   Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
${input_box}    css=input[placeholder='Search for products, brands and more']

*** Test Cases ***
Verifying the title of the flipkart website
    Flipkart opner
    Title Should Be    ${expected_title}

Verifying when user going to the website getting popup
    Flipkart opner
    Close the popup

Verifying the search is working fine
    Flipkart opner
    Close the popup
    Input the text into textbox    ${input_box}    Adidas
    Press Keys    ${input_box}      RETURN
    Close Browser


*** Keywords ***
Flipkart opner
    Open Browser        ${url}     chrome
    Wait Until Page Contains    ${url}

Close the popup
    Element Should Be Visible    xpath=//button[@class='_2KpZ6l _2doB4z']
    Click Element    xpath=//button[@class='_2KpZ6l _2doB4z']

Input the text into textbox
    [Arguments]    ${locator}  ${text}
    Input Text    ${locator}    ${text}

Storing elements in XLSX
