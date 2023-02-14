*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${qa_url}  http://testfire.net/feedback.jsp
#locators
${first_name}   css=input[name='name']
${email_id}     css=input[name='email_addr']
${subject}      css=input[name='subject']
${messgae}      xpath=//textarea[@name='comments']
${submit}       css=input[value=' Submit ']


*** Test Cases ***
Form validation
    Sleep    2
    Open Browser    ${qa_url}   chrome
    Input Text    ${first_name}    Loony Toon
    Input Text    ${email_id}    looneytoons@wb.com
    Input Text    ${subject}    Testing out
    Input Text    ${messgae}    Done
    Click Button    ${submit}
    Location Should Contain    sendFeedback