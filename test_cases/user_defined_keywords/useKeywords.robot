User Defined Keywords
# 1. without argument - find the syntax below
# My Custom Keyword
#   [documentation]    your simple documentation goes here
#   Your custom keyword implementation goes here

# 2. With argument - Find below syntax
# One Argument
#     [documentation]    your simple documentation goes here
#     [Arguments]    ${arg_name}
#     Log    Got argument ${arg_name}

# Three Arguments
#     [documentation]    your simple documentation goes here
#     [Arguments]    ${arg1}    ${arg2}    ${arg3}
#     Log    1st argument: ${arg1}
#     Log    2nd argument: ${arg2}
#     Log    3rd argument: ${arg3}




*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***
TC_01
    Lanch Browser
    Input Text    name:userName    gokul
    Input Password    name:password    poskerrke
    Click Button    name:submit

TC_02
    Lanch Browser
    Input User Data    Gokul    12345

*** Keywords ***
Lanch Browser    # User Defined keyword without any argument
    [Documentation]    Open the url in the defined browser in a maxiumised window and set selenium speed to 2sec
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2

Input User Data    # User Defined keyword with any(2) argument
    [documentation]    Take user date and add it in the form and submit
    [Arguments]    ${name}    ${password}
    Input Text    name:userName    ${name}
    Input Password    name:password    ${password}
    Click Button    name:submit