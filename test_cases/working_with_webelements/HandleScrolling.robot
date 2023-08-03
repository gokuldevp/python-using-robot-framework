# Handing Scrolling
# 1. Scrolling page till it reaches a pixel number, by executing javaScript code we can scroll to a required pixel place
# Execute Javascript    window.scrollTo(0, 500)

# 2. Scrolling page till it find element on page.
# Scroll Element Into View    xpath://img[@alt='Flag of Kuwait']

# 3. Scrolling page till bottom. - document.body.scrollHeight is used to get the height of the page.
# Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

# 4. Scrolling back to the top of the page
# Execute Javascript    window.scrollTo(0, 0)


*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}    chrome

*** Test Cases ***
Scrolling Testing
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1s

    Execute Javascript    window.scrollTo(0, 500)        # To scroll till reaching the Pixel
    
    Scroll Element Into View    xpath://img[@alt='Flag of Kuwait']        # To scroll till the element is reached
    
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)    # To scroll till reaching the bottom of the page

    Execute Javascript    window.scrollTo(0, 0)        # to scroll back to the top of the page