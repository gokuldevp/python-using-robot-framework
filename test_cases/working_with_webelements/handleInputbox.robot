# 0. Verify Title
# Working on test box or input box
# 1. Visibility status
# 2. Enabled status
# 3. Provide value
# 4. Clearing value

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com



*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store    # 0. Verify Title
    Click Link    xpath://a[@class='ico-register']
    ${txt_email_id}    Set Variable    id:Email
    Element Should Be Visible    ${txt_email_id}    # 1. Visibility status
    Element Should Be Enabled    ${txt_email_id}    # 2. Enabled status
    Input Text    ${txt_email_id}    ttpvt_gd01@yopmail.com    # 3. Provide value
    Sleep    5
    Clear Element Text    ${txt_email_id}    # 4. Clearing value
    Sleep    5
    Close Browser

*** Keywords ***