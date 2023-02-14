*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     RequestsLibrary
*** Variables ***
${amazon}      https://www.amazon.com/
${signify}     philips hue
${input}       //input[@id='twotabsearchtextbox']
*** Test Cases ***
To Input the values and check the results and go to website
    Open Browser    ${amazon}   chrome
    Input Text    xpath=${input}    ${signify}
    Click Element    css=#nav-search-submit-button
    Page Should Contain    ${signify}
