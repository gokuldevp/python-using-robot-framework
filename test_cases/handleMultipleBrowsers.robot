# Handling multiple browsers
# Switch Browser    Index - Keyword use to switch between multiple windows.
# index: This is an optional argument that specifies the index of the browser window or tab
# ...     to which you want to switch. The index starts from 1 for the first browser window
# ...     or tab, 2 for the second, and so on. If you don't provide this argument, the keyword
# ...     will switch to the first browser window by default.

*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Testing Multiple browsers:
    Open Browser    https://google.com    chrome
    Maximize Browser Window
    Set Selenium Speed    1s

    Open Browser    https://www.bing.com    edge
    Maximize Browser Window
    ${title}    Get Title
    Log To Console    ${title}


    Switch Browser    1            # Switching to first browser
    ${title}    Get Title
    Log To Console    ${title}
    Sleep    5s

*** Keywords ***