# # Handling Alert
# 1. Handle Alert  - Keyword used to handle Alert, user the below values for the respective actions

# ->ACCEPT: Accept the alert i.e. press Ok. Default.
# ->DISMISS: Dismiss the alert i.e. press Cancel.
# ->LEAVE: Leave the alert open.

# 2. Check if the alert is present
# -> Alert Should Be Present            Check if the alert is present with the given message
# -> Alert Should Not Be Present        Check if the alert is not present with the given message


*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Testing Alerts Handling
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # Set Selenium Speed    1seconds

    Click Button    xpath://button[@onclick='myFunctionAlert()']
    Handle Alert    ACCEPT            # closing the alert by clicking ok

    Click Button    xpath://button[@onclick='myFunctionConfirm()']
    Handle Alert    DISMISS           # Close the alert by clicking the Cancel button

    Click Button    xpath://button[@onclick='myFunctionPrompt()']
    Handle Alert    LEAVE           # Leaving the alert box

    Click Button    xpath://button[@onclick='myFunctionConfirm()']
    Alert Should Be Present    Press a button!    ACCEPT              #confirming the message inside a alert and Accepting it

*** Keywords ***
