HandleMouseActions
1. Right Click
Open Context Menu -    locator                     - To right click the element
2. Double click
Double Click Element -    Locator                  - To double click a element
3. Drag and Drop
Drag And Drop    sourceLocator    TargetLocator    - To drag and drop a element from source to target

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url1}    https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Test Mouse Actions
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Set Selenium Speed     1
    
    #Right Click
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']

    #Double Click
    Go To    ${url2}
    Double Click Element    xpath://button[@ondblclick='myFunction1()']
    ${field1}    Get Value    id:field1
    ${field2}    Get Value    id:field2
    Should Be Equal    ${field1}    ${field2}

    #Drag and Drop
    Drag And Drop    id:draggable    id:droppable
    
    Close Browser
