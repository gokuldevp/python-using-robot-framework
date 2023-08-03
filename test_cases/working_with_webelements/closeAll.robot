# Closing the browser
# 1. Close All Browsers - closse all the browser
# 2. Close Browser      - close the recently opened browser.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url1}    https://www.google.com
${url2}    https://demowebshop.tricentis.com/
${url3}    https://demowebshop.tricentis.com/register

*** Test Cases ***
Testing Closing All
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window

    Open Browser    ${url2}    ${browser}
    Maximize Browser Window

    Open Browser    ${url3}    ${browser}
    Maximize Browser Window

    Close Browser    #closing the recent browser
    Sleep    3
    Close All Browsers    #closing all the broser

    