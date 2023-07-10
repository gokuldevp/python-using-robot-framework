#handling Drop Down
# There are 3 ways to handle drop down/ list box
# 1. Select From List By Label
# 2. Select From List By Index 
# 3. Select From List By Value

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Test drop down
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # 1. handling dropdown
    Select From List By Label    name:continents    Africa    # we select from the dropdown based on the option test
    Select From List By Index    name:continents    6    # we select from the dropdown based on the option index
    # Select From List By Value    locator=    value      - no dropdown with value in the url # we select from the dropdown based on the option value attribute
    Sleep    3

    # 2. handling listbox - we can use the same way of the dropdown
    Select From List By Index    name:selenium_commands    3
    Select From List By Label    name:selenium_commands    Browser Commands
    Select From List By Index    name:selenium_commands    1

    # 3. unselecting from listbox
    Unselect From List By Index    name:selenium_commands    1

    



*** Keywords ***