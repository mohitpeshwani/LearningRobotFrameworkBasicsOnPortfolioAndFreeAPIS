*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     JSONLibrary
Library    Screenshot
*** Variables ***
${base_url}     https://mohitpeshwani.github.io/crazyprogrammer/
${web_driver}   chrome
*** Test Cases ***
Opening My portfolio website
    Portfolio Loader
    Sleep   1
    Close Browser

Checking out menu navigation elements are visible or not
    Portfolio Loader        
    Element Should Be Visible    link:#

*** Keywords ***
Portfolio Loader
    Open Browser    ${base_url}     ${web_driver}
    Maximize Browser Window