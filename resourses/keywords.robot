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

# 3. With argument and return value- Find below syntax
# Argument with Return Value
#     [Documentation]    your simple documentation goes here
#     [Arguments]    ${arg1}
#     ${var1}    return_value
#     [return]    ${variable}

*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

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

Get the Text  # User Definded keyword with argument and return value
    [documentation]    return the text inside the element
    [Arguments]    ${locator}
    ${message}    Get Text    ${locator}
    [return]    ${message}  