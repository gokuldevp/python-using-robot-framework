# Go To - The Go To keyword navigates the current browser window to the specified URL
# Go Back - The Go Back keyword navigates the current browser window to the previous page in its history
# Get Location - The Get Location keyword retrieves the URL of the current page in the browser and returns it as a string. 

*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
Test Navigation Keywords
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window

    ${currentLoc}    Get Location    #Get the current page url and save it in a variable
    Log To Console    ${currentLoc}

    Go To    https://www.bing.com/    #Go to bing.com
    ${currentLoc}    Get Location
    Log To Console    ${currentLoc}

    Go Back                           #Return back to google.com
    ${currentLoc}    Get Location
    Log To Console    ${currentLoc}
*** Keywords ***