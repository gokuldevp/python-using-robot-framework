# Handling Tables
# 1. Accessing table colum
# //table[@name='BookTable']/tbody/tr/td[1]

# 2. Accessing table row
# //table[@name='BookTable']/tbody/tr[2]/td

# 3. Accessing a unique table data
# //table[@name='BookTable']/tbody/tr[2]/td[5]

# 4. Check if a value is available in a column
# Table Column Should Contain    locator    column_number    value

# 5. Check if a value is abailable in a row
# Table row Should Contain    locator    row_number    value

# 6. Check if a value is present in a perticular row*column
# Table Cell Should Contain    locator    row_number    column_number    value

# 7. check if a value is present in the header
# Table Header Should Contain    locator    value

# 8. Check if a value is present in the footer
# Table Footer Should Contain locator    value

9. 

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome
${tableBody}    //table[@name='BookTable']/tbody
${tableRow}    //table[@name='BookTable']/tbody/tr
${tableColumn}    //table[@name='BookTable']/tbody/tr[2]/td

*** Test Cases ***
Test Handling Table
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${number_of_rows}     Get Element Count     ${tableRow}                        # counting the number of rows in a table
    ${number_of_columns}     Get Element Count     ${tableColumn}                  # counting the number of columns in a table
    Log To Console    ${number_of_columns} ${number_of_rows}

    FOR  ${i}  IN RANGE    2     ${number_of_rows}
        ${data}    Get Text    //table[@name='BookTable']/tbody/tr[${i}]/td[1]
        Log To Console    ${data}
    END
    
    Scroll Element Into View    //table[@name='BookTable']
    Run Keyword And Ignore Error    Table Column Should Contain    //table[@name='BookTable']    1    Author
    Table row Should Contain    //table[@name='BookTable']    1    Author
    Run Keyword And Ignore Error    Table Cell Should Contain    //table[@name='BookTable']     3    5    Selenium
    Table Header Should Contain    //table[@name='BookTable']     Price
    Table Should Contain    //table[@name='BookTable']    Amod