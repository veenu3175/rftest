*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${env}      uat
&{DICTIONARY}      qa=http://google.com      dev=http://gmail.com         uat=http://facebook.com


*** Test Cases ***
DictTest
#       open browser    ${url.${env}}        chrome
#       maximize browser window

        log to console    \n${DICTIONARY.dev}

        FOR    ${key}    IN    ${DICTIONARY.keys()}
                log to console  ${DICTIONARY}[${env}]
        END


