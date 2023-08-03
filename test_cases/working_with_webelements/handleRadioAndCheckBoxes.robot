# handle Radio And Check Boxes
# 1. radio button
# 2. check box

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Testing Radio buttons and Check Boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 second    #keep a 2 sec delay for all the operations

    # 1. select radio button
    Select Radio Button    sex    Female
    Select Radio Button    exp    3

    # 2. select check box
    Select Checkbox    xpath://input[@value="Manual Tester"]
    Select Checkbox    xpath://input[@value="Automation Tester"]
    Select Checkbox    xpath://input[@value="RC"]
    Select Checkbox    xpath://input[@value="Selenium IDE"]
    Select Checkbox    xpath://input[@value="Selenium Webdriver"]

    # 3. unselect check box
    Checkbox Should Be Selected    xpath://input[@value="RC"]
    Unselect Checkbox    xpath://input[@value="RC"]
    Unselect Checkbox    name:profession    #unselect the first element with the name locator

    # 4. Checking if the checkbox is selected
    Checkbox Should Be Selected    xpath://input[@value="RC"]     # Expected: FAIL
    
*** Keywords ***