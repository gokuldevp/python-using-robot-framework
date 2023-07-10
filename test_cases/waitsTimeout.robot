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

    ${timeout}    Get Selenium Timeout
    Log To Console    ${timeout}    #print 5
    
    Wait Until Page Contains    Register    #wait until the text Register is available in the page for 5 seconds - example of Timeout waits
    # Wait Until Page Contains    Registerion    #Text 'Registerion' did not appear in 5 seconds.

    Set Selenium Timeout    10 seconds    # set the selenium timeout to 10seconds

    ${timeout}    Get Selenium Timeout
    Log To Console    ${timeout}    #print 10
    Wait Until Page Contains    Registerion    #Text 'Registerion' did not appear in 10 seconds.

    Select Radio Button    Gender    M
    Input Text    id:FirstName    ttpvt
    Input Text    id:LastName    gokul
    Input Text    id:Email    ttpvt_gd01@yopmail.com
    Input Password    id:Password    Ttpvt_gd01@yopmail.com
    Input Password    id:ConfirmPassword    Ttpvt_gd01@yopmail.com
    Click Button    id:register-button

*** Keywords ***

