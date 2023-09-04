*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Keywords ***
*** Variables ***

@{credentials}      //input[@id='Email']        //input[@id='Password']     //button[contains(text(),'Log in')]
&{DICTIONARY}        xpath1=//input[@id='Email']         xpath2=//input[@id='Password']          xpath3=//button[contains(text(),'Log in')]


${username}     admin@yourstore.com
${password}     admin1
${url}     https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome
*** Test Cases ***
ListTest
        FOR     ${List}     IN    @{credentials}
             log to console   \nI picked ${List} value
        END

DIctionarytest
#        FOR    ${key}  IN   &{DICTIONARY.keys()}
#              log to console    &{DICTIONARY["$(key)"]}
#        END

            ${dictvalue}    get from dictionary    ${DICTIONARY}    xpath2
                log to console    \n${dictvalue}

            log to console    \n${DICTIONARY['xpath2']}

