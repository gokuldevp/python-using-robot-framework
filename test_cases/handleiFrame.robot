# Handing Iframe
# 1. Frame Should Contain - the keyword to check if a frame contains specific content is Frame Should Contain.
# eg "Frame Should Contain    locator    text"

# 2. Select Frame    - the keyword is used to access content inside a frame
# eg: Select Frame    locator

# 3. Unselect Frame    - the keyword is used to comeout of current iframe
# eg: Unselect Frame

# 4. Current Frame Should Contain - Check if the current frame contains the specified text
# eg: Curren Frame Should contain    Text

# 5. Current Frame Should Contain - Verify if the current frame didn't contains the specified text
# eg: Curren Frame Should not contain    Text


*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Test iFrame Handler
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Frame Should Contain    id:frame-one796456169    Name:    # check if content Name: is present inside the frame

    Select Frame    id:frame-one796456169    #Open the iframe

    Current Frame Should Contain    Gender:    #Verify if the current frame contain the text Gender: 
    Current Frame Should Not Contain    gokul    #Verify if the current frame don't contain the text gokul

    Unselect Frame    #close current iframe
        

*** Keywords ***
