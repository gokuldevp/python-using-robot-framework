*** Settings ***
Library    SeleniumLibrary
Resource    ../../resourses/keywords.robot        # importing the resourse file from the resourse.robot file


*** Test Cases ***
TC_01
    Lanch Browser
    Input Text    name:userName    gokul
    Input Password    name:password    poskerrke
    Click Button    name:submit

TC_02
    Lanch Browser
    Input User Data    Gokul    12345
    ${invalid_user_msg}    Get the Text        xpath://input[@name='password']/parent::td/child::span
    Log   ${invalid_user_msg}        # Log the message in the report