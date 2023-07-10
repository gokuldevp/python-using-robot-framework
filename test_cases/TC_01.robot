*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login URL}    https://demo.nopcommerce.com/
${Browser}    chrome
${Email}    ttpvt_gd@gmail.com
${Password}    123456

*** Test Cases ***
LoginTest
    # Create Webdriver    chrome    executable_path="D:\Web Automation using Robot Framework\driverpath\chromedriver_win32\chromedriver.exe"
    # [Setup]    Setup WebDrivers
    Open Browser    ${Login URL}    ${Browser}
    Maximize Browser Window
    Click Link    xpath://a[@class='ico-login']
    Input Text    id=Email    ${Email}
    Input Password    id=Password    ${Password}
    Click Button    xpath://button[@class='button-1 login-button']
    Element Should Be Visible     xpath://a[@class='ico-logout']
    Click Element    xpath://a[@class='ico-logout']
    Close Browser
    

*** Keywords ***
# Setup WebDrivers
#     ${driver_path}    Evaluate  webdriver.Chrome(ChromeDriverManager().install())
#     Set Global Variable    ${webdriver.chrome.driver}    ${driver_path}


