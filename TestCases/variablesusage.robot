*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/variables.robot


*** Test Cases ***
VariablrsTest
        open browser     ${url}       ${browser}
        maximize browser window
       log to console    ${usernameid}[xpath1]  ${passwordid}[xpath2]   ${loginbuttonid}[xpath3]
       clear element text   ${usernameid}
       clear element text   ${passwordid}
       sleep    3

        input text   ${usernameid}[xpath1]       ${username}
        input text    ${passwordid}[xpath2]      ${password}
        click button    ${loginbuttonid}[xpath3]
        Sleep    2
        ${pagetitle}        get title
         ${element_text}    element should contain   //body/div[6]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/div[1]       unsuccessful
       # log to console    ${element_text}
        IF   "${pagetitle}"=="Dashboard / nopCommerce administration"
              log to console    the page title is : ${pagetitle}
        ELSE IF     "${element_text}"== "None"
              log to console   ${element_text}  login failed
        ELSE
                log to console    did not execute if andf else if
        END

        element should contain    //li[contains(text(),'The credentials provided are incorrect')]       The credentials provided are incorrect
