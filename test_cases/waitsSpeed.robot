# Waits in robot framework:
# 1. Selenium Speed
# 2. Selenium Timeout
# 3. Implicit Wait
# 4. Sleep

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demowebshop.tricentis.com/register

*** Test Cases ***
Test speed
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    ${speed}    Get Selenium Speed
    Log To Console    ${speed}

    #Make every step to wait for x second - default x is 0
    Set Selenium Speed    1second    
    Select Radio Button    Gender    M
    Input Text    id:FirstName    ttpvt
    Input Text    id:LastName    gokul
    Input Text    id:Email    ttpvt_gd01@yopmail.com
    Input Password    id:Password    Ttpvt_gd01@yopmail.com
    
    #Make a specific step wait for x second
    Sleep    4
    Input Password    id:ConfirmPassword    Ttpvt_gd01@yopmail.com
    Click Button    id:register-button

    ${speed}    Get Selenium Speed
    Log To Console    ${speed}



*** Keywords ***

