# Links
# 1. Getting count of the links in a page useing below keyword
# Get Element Count    xpath://a
# 2. Extract all the links test from page using a for loop
# Loop a range from start to end index
#     FOR    ${index}    IN RANGE    1    10
#         Log    ${index}   
#     END

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
GetAllLinks Test
    Open Browser    ${url}    chrome
    Maximize Browser Window
    ${links_count}    Get Element Count    xpath://a
    Log To Console    ${links_count}
    
    ${counter}    Set Variable    0
    
    FOR    ${i}    IN RANGE    1    ${links_count+1}
        ${current_link}=    Get Text    xpath:(//a)[${i}]
        IF   "${current_link}" != ""
            ${counter}    Evaluate    ${counter}+1
            Log To Console    ${counter}: ${current_link}
        END
    END

    ${links_without_link_test}    Evaluate    ${links_count}-${counter}

    Log To Console    Links with link text ${counter}
    Log To Console    Links without Link text ${links_without_link_test}
