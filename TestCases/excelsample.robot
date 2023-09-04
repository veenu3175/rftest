*** Settings ***
Library    SeleniumLibrary
Library    ExcelLibrary


*** Test Cases ***
ExcelTest
        open browser    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F          chrome

        maximize browser window
        input text    //input[@id='Email']              admin@yourstore.com
        input text    //input[@id='Password']           admin

        click button    //button[contains(text(),'Log in')]

        ${loginstatus}      page should contain    unsuccessful
        log to console    ${loginstatus}
        ${pagetitle}     get title
        IF    ${loginstatus}
           log to console    invalid login
        ELSE IF   ${pagetitle}== "Dashboard"
           log to console    Login successful
        END

