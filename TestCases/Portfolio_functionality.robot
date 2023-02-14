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
    Element Should Be Visible    link:HOME
    Element Should Be Visible    link:ABOUT
    Element Should Be Visible    link:SERVICES
    Element Should Be Visible    link:WORK

Checking wheather Contact button show us map and contact us
    Portfolio Loader
    Element Should Be Visible      css=.btn.btn-primary.contact
    Execute Javascript  window.scrollBy(0,500)
    Click Element    css=.btn.btn-primary.contact
    contact us elements to check

*** Keywords ***
Portfolio Loader
    Open Browser    ${base_url}     ${web_driver}
    Maximize Browser Window
    
contact us elements to check
    Element Should Be Visible    css=section[id='contact'] div[class='card-wrapper'] div:nth-child(1)
    Element Should Be Visible    css=img[src='./images/msg2.png']