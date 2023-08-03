# Handle Screen Shots
# 1. Caputure Page Screenshot    path    - Capture the screenshot of the visible page and save it in the path, if filename only is given save in current directory
# 2. Capture Element Screenshot    locator    path - capture the screen shot of a specific element and save it in a path
# 3. Set Screenshot Directory    path - Set the path for Screenshots.

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test ScreenShots.
    Open Browser    https://gokuldevp.github.io/Meal-App/    chrome
    Maximize Browser Window

    Capture Page Screenshot    screenshot/homepage1.png

    Input Text    id:searchInput    Chicken
    Capture Page Screenshot    screenshot/homepage-SearchResult1.png

    Wait Until Element Is Visible    class:details
    Click Element    class:details    

    Wait Until Element Is Visible    class:card-title
    ${foodName}    Get Text    class:card-title
    Log To Console    ${foodName}
    Capture Page Screenshot    screenshot/details-SearchResult1.png

    Sleep    3
    Capture Element Screenshot    class:img-fluid   screenshot/details-food-details.png

    Set Screenshot Directory    screenshot
    Click Element    class:nav-link
    Capture Page Screenshot    favourites.png

    


