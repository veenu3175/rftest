*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library     ExcelLibrary
Library     DateTime


*** Variables ***



*** Test Cases ***
sampletest
    [Tags]      sanity
    [Documentation]    sampletest to launch
        open browser    https://admin-demo.nopcommerce.com/admin/           chrome
        maximize browser window
#        input text    //input[@id='Email']          admin@yourstore.com
#        input text    //input[@id='Password']       admin
#        click button    //button[contains(text(),'Log in')]
#        sleep      3
#
#        ${alltexts}    Get WebElements    xpath://input
#        FOR    ${item}      IN      @{alltexts}
#            log to console   ${item}

#        END
TC2
        [Documentation]    just a test
        [Tags]    regression
#        ${buttoncount}      get length    ${alltexts}
#        ${listitems}        get list items    ${alltexts}
       # log to console    ${buttoncount}     ${listitems}
        #log to console    the username used is   %{USERNAME}     and    %{OS}
        ${file}     file should exist    C:/Users/Praveen/Desktop/Book1.xlsx
        log to console   \n ${file}


       ${currdate}      get current date    UTC
        log to console      \n${currdate}

TC2
        [Tags]    scrn

        capture page screenshot     C:/Users/Praveen/PycharmProjects/pythonProject6/Screenshots/scrnshr.png


