# # Handling Tab window
# Step 1: Get a identifier of the window
# eg:
# ${main_window}    Get Window Identifiers

# Step 2: Use Switch Window to switch to the other window
# Switch Window    locator          , where locator: The value to identify the target window. It can be a partial or full window title, URL, or index of the window.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.automationtesting.in/Windows.html

*** Test Cases ***
Test handle Tabbed Windows
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 second
    
    ${main_window}    Get Window Identifiers
    Click Button    xpath://*[@id="Tabbed"]/a/button
    Switch Window    ${main_window}
    Sleep    5

*** Keywords ***